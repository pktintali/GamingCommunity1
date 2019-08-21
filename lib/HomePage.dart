import 'package:flutter/material.dart';
import 'Streamers.dart';
import 'profile.dart';
import 'SeeAll.dart';
import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_admob/firebase_admob.dart';

MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  keywords: <String>[
    'shopping',
    'beautiful apps',
    'pubg',
    'youtube streamer',
    'gaming',
    'india',
    'hindi',
  ],
  birthday: DateTime.now(),
  childDirected: false,
  designedForFamilies: false,
  gender: MobileAdGender.male,
  testDevices: <String>[],
);

Streamers streamers = Streamers();

class MyHomePage extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _connectionStatus = 'Unknown';
  Connectivity connectivity;
  StreamSubscription<ConnectivityResult> subscription;

  @override
  void initState() {
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

  Future conditionalFuture() {
    if (_connectionStatus == 'ConnectivityResult.mobile' ||
        _connectionStatus == 'ConnectivityResult.wifi') {
      return Future.delayed(Duration(milliseconds: 0));
    } else {
      return Future.delayed(Duration(seconds: 2));
    }
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    RewardedVideoAd.instance.load(
        adUnitId: 'ca-app-pub-5861053171904035/8826480732',
        targetingInfo: targetingInfo);
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
                    title: TyperAnimatedTextKit(
                      text: ['Stay Connected'],
                      textStyle: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'LexendPeta',
                      ),
                    ),
                    background: Image.asset(
                      'images/banner.jpg',
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
          shape: Border(
            top: BorderSide(color: Colors.black, width: 1.0),
            bottom: BorderSide(color: Colors.black, width: 1.0),
          ),
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
                  MaterialPageRoute(
                      builder: (context) =>
                          SeeAll(category, _connectionStatus)));
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
          onPressed: () {
            if (DateTime.daysPerWeek == 7 ||
                DateTime.daysPerWeek == 1 ||
                DateTime.daysPerWeek == 5 ||
                DateTime.daysPerWeek == 3) {
              RewardedVideoAd.instance.show();
              RewardedVideoAd.instance.listener = (RewardedVideoAdEvent event,
                  {String rewardType, int rewardAmount}) {
                if (event == RewardedVideoAdEvent.rewarded) {}
              };
            }
            setState(() {});
          },
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile(
                                url: logo,
                                name: name,
                                tag: tag,
                                status: _connectionStatus,
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
    if (_connectionStatus == 'ConnectivityResult.mobile' ||
        _connectionStatus == 'ConnectivityResult.wifi') {
      return NetworkImage(url);
    } else {
      return AssetImage('images/avatar.png');
    }
  }
}
