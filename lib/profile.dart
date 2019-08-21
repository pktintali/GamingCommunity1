import 'package:flutter/material.dart';
import 'package:android_intent/android_intent.dart';
import 'dart:io' show Platform;
import 'package:webview_flutter/webview_flutter.dart';
import 'package:indian_gaming_community/Streamers.dart';
import 'joinSocial.dart';
import 'package:firebase_admob/firebase_admob.dart';

JoinSocial _joinSocial = JoinSocial();
Streamers streamers = Streamers();
int fav = 0;

MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  keywords: <String>[
    'shopping',
    'beautiful apps',
    'pubg',
    'youtube streamer'
        'gaming'
        'india',
    'hindi',
  ],
  birthday: DateTime.now(),
  childDirected: false,
  designedForFamilies: false,
  gender: MobileAdGender.male,
  testDevices: <String>[],
);

class Profile extends StatefulWidget {
  static const id = 'profile';
  final String name;
  final String url;
  final String tag;
  final status; //ic_launcher
  Profile({this.name, this.url, this.tag, this.status});
  @override
  _ProfileState createState() => _ProfileState(name, url, tag, status);
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-5861053171904035/4198445369',
    size: AdSize.smartBanner,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("BannerAd event is $event");
    },
  );
  InterstitialAd myInterstitial = InterstitialAd(
    adUnitId: 'ca-app-pub-5861053171904035/4538438281',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );

  final String name;
  final String url;
  final String tag;
  final status;
  _ProfileState(this.name, this.url, this.tag, this.status);
  double _scale;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    myBanner.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    myBanner
      ..load()
      ..show(
        anchorOffset: 0.0,
        anchorType: AnchorType.bottom,
      );

    _scale = 1 - _controller.value;
    return Scaffold(
      backgroundColor: Color(0xFFFDDDEC),
      appBar: AppBar(
        backgroundColor: Color(0xFF5600E8),
        elevation: 0.0,
        title: Text(
          name,
          style: TextStyle(
            fontSize: 26.0,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 240,
                      child: Material(
                        color: Color(0xFF5600E8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(130.0),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[],
                              ),
                            ),
                            Hero(
                              tag: tag,
                              child: Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 100.0,
                                  backgroundImage: imgData(url),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FractionalTranslation(
                      translation: Offset(0, -0.5),
                      child: RawMaterialButton(
                        elevation: 10.0,
                        splashColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        fillColor: Colors.white,
                        onPressed: () async {
                          if (Platform.isAndroid) {
                            AndroidIntent intent = AndroidIntent(
                              action: 'action_view',
                              data: _joinSocial.joinYoutube(name, 'join'),
                            );
                            await intent.launch();
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 10),
                          child: Text(
                            'JOIN',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF5600E8),
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    'Social Media',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'LexendPeta'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton(
                      mini: true,
                      heroTag: null,
                      child: Image.asset(
                        'images/icons/yt3d.png',
                        height: 30,
                        width: 30,
                      ),
                      onPressed: () async {
                        if (Platform.isAndroid) {
                          AndroidIntent intent = AndroidIntent(
                            action: 'action_view',
                            data: _joinSocial.joinYoutube(name, 'channel'),
                          );
                          await intent.launch();
                        }
                      },
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                    ),
                    FloatingActionButton(
                      mini: true,
                      heroTag: null,
                      child: Image.asset(
                        'images/icons/fb3d.png',
                        height: 30,
                        width: 30,
                      ),
                      onPressed: () async {
                        if (Platform.isAndroid) {
                          AndroidIntent intent = AndroidIntent(
                            action: 'action_view',
                            data: _joinSocial.joinFb(name),
                          );
                          await intent.launch();
                        }
                      },
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                    ),
                    FloatingActionButton(
                      mini: true,
                      heroTag: null,
                      child: Image.asset(
                        'images/icons/insta3d.png',
                        height: 30,
                        width: 30,
                      ),
                      onPressed: () async {
                        if (Platform.isAndroid) {
                          AndroidIntent intent = AndroidIntent(
                            action: 'action_view',
                            data: _joinSocial.joinInsta(name),
                          );
                          await intent.launch();
                        }
                      },
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                    ),
                    FloatingActionButton(
                      mini: true,
                      heroTag: null,
                      child: Image.asset(
                        'images/icons/twit3d.png',
                        height: 30,
                        width: 30,
                      ),
                      onPressed: () async {
                        if (Platform.isAndroid) {
                          AndroidIntent intent = AndroidIntent(
                            action: 'action_view',
                            data: _joinSocial.joinTwit(name),
                          );
                          await intent.launch();
                        }
                      },
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                    ),
                    FloatingActionButton(
                      mini: true,
                      heroTag: null,
                      child: Image.asset(
                        'images/icons/ds3d.png',
                        height: 30,
                        width: 30,
                      ),
                      onPressed: () async {
                        if (Platform.isAndroid) {
                          AndroidIntent intent = AndroidIntent(
                            action: 'action_view',
                            data: _joinSocial.joinDiscord(name),
                          );
                          await intent.launch();
                        }
                      },
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        myInterstitial
                          ..load()
                          ..show(
                            anchorType: AnchorType.bottom,
                            anchorOffset: 0.0,
                          );
                        Navigator.of(context).push(PageRouteBuilder(
                            opaque: false,
                            pageBuilder: (BuildContext context, _, __) =>
                                WebService(
                                    'https://livecounts.net/channel/${_joinSocial.liveSub(name)}')));
                      },
                      onTapDown: _onTapDown,
                      onTapUp: _onTapUp,
                      child: Transform.scale(
                        scale: _scale,
                        child: _animatedButtonUI,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: FloatingActionButton(
                        elevation: 20,
                        tooltip: 'Add To Favourite',
                        backgroundColor: Color(0xFFA7B0E8),
                        onPressed: () {
                          if (fav == 0) {
                            fav = 1;
                          } else {
                            fav = 0;
                          }
                          setState(() {});
                        },
                        child: Icon(
                          myFavIconData(),
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  IconData myFavIconData() {
    if (fav == 1) {
      return Icons.favorite;
    } else
      return Icons.favorite_border;
  }

  ImageProvider imgData(String url) {
    if (status == 'ConnectivityResult.mobile' ||
        status == 'ConnectivityResult.wifi') {
      return NetworkImage(url);
    } else {
      return AssetImage('images/avatar.png');
    }
  }

  Widget get _animatedButtonUI => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 70,
          width: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 20.0,
                offset: Offset(8, 8),
                spreadRadius: 5.0,
              )
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFA7BFE8),
                Color(0xFF5600E8),
              ],
            ),
          ),
          child: Center(
            child: Text(
              'Live Sub. Count',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
}

class WebService extends StatelessWidget {
  final String url;
  WebService(this.url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Live Sub. Count'),
      ),
      body: Container(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: url,
        ),
      ),
    );
  }
}
