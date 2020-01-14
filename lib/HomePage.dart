import 'package:flutter/material.dart';
import 'Streamers.dart';
import 'SeeAll.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:indian_gaming_community/favourites.dart';
import 'constants.dart';

Streamers streamers = Streamers();

class MyHomePage extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    context1 = context;
    checkStatus();
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
            future: checkStatus(),
            builder: (context, snapshot) {
              print(snapshot.connectionState);
              if (snapshot.connectionState == ConnectionState.done ||
                  connectionStatus == 'ConnectivityResult.wifi' ||
                  connectionStatus == 'ConnectivityResult.mobile') {
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

  Widget categoryCard({String category, int key}) {
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
        conditionalWidget(key),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FlatButton(
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SeeAll(category, connectionStatus)));
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

  Widget singleChildScroll() {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              categoryCard(category: 'TOP STREAMERS', key: 1),
              rowGenerator(
                topStreamers(1, 1),
                topStreamers(2, 0),
              ),
              rowGenerator(
                topStreamers(3, 2),
                topStreamers(4, 3),
              ),
              rowGenerator(
                topStreamers(5, 4),
                topStreamers(6, 5),
              ),
              rowGenerator(
                topStreamers(7, 6),
                topStreamers(8, 7),
              ),
              categoryCard(category: 'Other Best Streamers'),
              rowGenerator(
                otherBest(9, 0),
                otherBest(10, 1),
              ),
              rowGenerator(
                otherBest(11, 2),
                otherBest(12, 3),
              ),
              rowGenerator(
                otherBest(13, 4),
                otherBest(14, 5),
              ),
              rowGenerator(
                otherBest(15, 6),
                otherBest(16, 7),
              ),
              categoryCard(category: 'Growing Streamer'),
              rowGenerator(
                growing(17, 0),
                growing(18, 1),
              ),
              rowGenerator(
                growing(19, 2),
                growing(20, 3),
              ),
              rowGenerator(
                growing(21, 4),
                growing(22, 5),
              ),
              rowGenerator(
                growing(23, 6),
                growing(24, 7),
              ),
              categoryCard(category: 'Influencers/Casters'),
              rowGenerator(
                caster(25, 0),
                caster(26, 1),
              ),
            ],
          ),
        ],
      ),
    );
  }

  ImageProvider onlineImage(String url) {
    if (connectionStatus == 'ConnectivityResult.mobile' ||
        connectionStatus == 'ConnectivityResult.wifi') {
      return NetworkImage(url);
    } else {
      return AssetImage('images/avatar.png');
    }
  }

  Widget conditionalWidget(int key) {
    if (key == 1) {
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Favourites()));
        },
        child: Icon(
          Icons.favorite,
          color: Colors.red,
        ),
        mini: true,
        backgroundColor: Colors.white,
      );
    } else {
      return Text('');
    }
  }
}
