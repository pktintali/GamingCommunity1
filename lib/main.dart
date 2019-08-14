import 'package:flutter/material.dart';
import 'Streamers.dart';
import 'profile.dart';
import 'SeeAll.dart';
import 'dart:async';
import 'package:connectivity/connectivity.dart';

void main() => runApp(MyApp());
Streamers streamers = Streamers();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indian Gaming Community',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _connectionStatus = 'Unknown';
  Connectivity connectivity;
  StreamSubscription<ConnectivityResult> subscription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    connectivity = new Connectivity();
    subscription =
        connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      _connectionStatus = result.toString();
      print(_connectionStatus);
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  Future conditionalFuture() {
    if (_connectionStatus == 'ConnectivityResult.mobile' ||
        _connectionStatus == 'ConnectivityResult.wifi') {
      return Future.delayed(Duration(milliseconds: 0));
    } else {
      return Future.delayed(Duration(seconds: 2));
    }
  }

  @override
  Widget build(BuildContext context) {
    print(_connectionStatus);
    return Scaffold(
      backgroundColor: Color(0xFFFDEDEC),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Color(0xFF6200EE),
                expandedHeight: 150.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      'Stay Connected',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    background: Image.asset(
                      'images/banner.jpg', //https://previews.123rf.com/images/monsitj/monsitj1711/monsitj171100022/89367659-retro-game-controller-on-colorful-background-3d-illustration-e-sport-and-online-gaming-concept.jpg
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: FutureBuilder(
            future: conditionalFuture(),
            builder: (context, snapshot) {
              print(snapshot.connectionState);
              if (snapshot.connectionState == ConnectionState.done ||
                  _connectionStatus == 'ConnectivityResult.wifi' ||
                  _connectionStatus == 'ConnectivityResult.mobile') {
                return singleChildScroll();
              } else {
                return Center(
                  child: new CircularProgressIndicator(),
                );
              }
            },
          )),
    );
  }

  Widget categoryCard({String category}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Card(
          color: Color(0xFF6200EE),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                category,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FlatButton(
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  //TODO:this was comment

                  MaterialPageRoute(builder: (context) => SeeAll(category)));
            },
            child: Text(
              'SEE ALL',
              style: TextStyle(
                color: Color(0xFF6200EE),
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget profiledRow(
      {String name1, String logo1, String name2, String logo2, String tag1}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        rowCard(name: name1, logo: logo1, tag: tag1),
        rowCard(name: name2, logo: logo2, tag: tag1 + 'L'),
      ],
    );
  }

  Expanded rowCard({@required String name, @required String logo, String tag}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {},
          //elevation: 8.0,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Hero(
                  tag: tag,
                  child: Container(
                    child: CircleAvatar(
                      radius: 50.0,
                      //TODO:Change this
                      backgroundImage: onlineImage(logo),
                    ),
                  ),
                ),
              ),
              Text(
                '$name',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
              FlatButton(
                color: Color(0xFF60FF43),
                onPressed: () {
                  setState(() {
                    //TODO:this was comment
//                    _connections.connect();
//                    _connections.initConnectivity();
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile(
                                url: logo,
                                name: name,
                                tag: tag,
                              )));
                },
                child: Text(
                  'View Profile',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleChildScroll() {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              categoryCard(category: 'TOP STREAMERS'),
              profiledRow(
                  tag1: 'T1',
                  name1: '${streamers.topStreamer[0]}',
                  logo1: '${streamers.topStreamerLogo[0]}',
                  name2: '${streamers.topStreamer[1]}',
                  logo2: '${streamers.topStreamerLogo[1]}'),
              profiledRow(
                  tag1: 'T2',
                  name1: '${streamers.topStreamer[2]}',
                  logo1: '${streamers.topStreamerLogo[2]}',
                  name2: '${streamers.topStreamer[3]}',
                  logo2: '${streamers.topStreamerLogo[3]}'),
              profiledRow(
                  tag1: 'T3',
                  name1: '${streamers.topStreamer[4]}',
                  logo1: '${streamers.topStreamerLogo[4]}',
                  name2: '${streamers.topStreamer[5]}',
                  logo2: '${streamers.topStreamerLogo[5]}'),
              profiledRow(
                  tag1: 'T4',
                  name1: '${streamers.topStreamer[6]}',
                  logo1: '${streamers.topStreamerLogo[6]}',
                  name2: '${streamers.topStreamer[7]}',
                  logo2: '${streamers.topStreamerLogo[7]}'),
              categoryCard(category: 'Other Best Streamers'),
              profiledRow(
                  tag1: 'T5',
                  name1: streamers.otherBestStreamer[0],
                  logo1: streamers.otherBestStreamerLogo[0],
                  name2: streamers.otherBestStreamer[1],
                  logo2: streamers.otherBestStreamerLogo[1]),
              profiledRow(
                  tag1: 'T6',
                  name1: streamers.otherBestStreamer[2],
                  logo1: streamers.otherBestStreamerLogo[2],
                  name2: streamers.otherBestStreamer[3],
                  logo2: streamers.otherBestStreamerLogo[3]),
              profiledRow(
                  tag1: 'T7',
                  name1: streamers.otherBestStreamer[4],
                  logo1: streamers.otherBestStreamerLogo[4],
                  name2: streamers.otherBestStreamer[5],
                  logo2: streamers.otherBestStreamerLogo[5]),
              profiledRow(
                  tag1: 'T8',
                  name1: streamers.otherBestStreamer[6],
                  logo1: streamers.otherBestStreamerLogo[6],
                  name2: streamers.otherBestStreamer[7],
                  logo2: streamers.otherBestStreamerLogo[7]),
              categoryCard(category: 'Growing Streamer'),
              profiledRow(
                tag1: 'T9',
                name1: streamers.growingStreamer[0],
                logo1: streamers.growingStreamerLogo[0],
                name2: streamers.growingStreamer[1],
                logo2: streamers.growingStreamerLogo[1],
              ),
              profiledRow(
                tag1: 'T10',
                name1: streamers.growingStreamer[2],
                logo1: streamers.growingStreamerLogo[2],
                name2: streamers.growingStreamer[3],
                logo2: streamers.growingStreamerLogo[3],
              ),
              profiledRow(
                tag1: 'T11',
                name1: streamers.growingStreamer[4],
                logo1: streamers.growingStreamerLogo[4],
                name2: streamers.growingStreamer[5],
                logo2: streamers.growingStreamerLogo[5],
              ),
              profiledRow(
                tag1: 'T12',
                name1: streamers.growingStreamer[6],
                logo1: streamers.growingStreamerLogo[6],
                name2: streamers.growingStreamer[7],
                logo2: streamers.growingStreamerLogo[7],
              ),
              categoryCard(category: 'Influencers/Casters'),
              profiledRow(
                tag1: 'T13',
                name1: streamers.caster[0],
                logo1: streamers.casterLogo[0],
                name2: streamers.caster[1],
                logo2: streamers.casterLogo[1],
              )
            ],
          ),
        ],
      ),
    );
  }

  ImageProvider onlineImage(String url) {
    if (_connectionStatus == 'ConnectivityResult.mobile') {
      return NetworkImage(url);
    } else {
      return AssetImage('images/avatar.png');
    }
  }
}
