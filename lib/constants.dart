import 'package:flutter/material.dart';
import 'package:indian_gaming_community/profile.dart';
import 'dart:io';
import 'package:firebase_admob/firebase_admob.dart';

var connectionStatus = 'Unknown';
BuildContext context1;

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

List<String> favName = [];
List<String> favLogo = [];
List<String> favUrl = [];
List<String> favDisc = [];
List<String> favInsta = [];
List<String> favFb = [];
List<String> favTwit = [];

Future checkStatus() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      print('connected');
      connectionStatus = 'ConnectivityResult.wifi';
    }
  } on SocketException catch (_) {
    print('not connected');
  }
}

Widget favWidget(
    {String name,
    String logo,
    String tag,
    BuildContext context,
    String status,
    String url,
    String disc,
    String insta,
    String fb,
    String twitter}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      rowCard(
        name: name,
        logo: logo,
        tag: tag,
        context: context,
        status: status,
        twit: twitter,
        insta: insta,
        fb: fb,
        disc: disc,
        url: url,
      ),
    ],
  );
}

ImageProvider statusImage(String logo, String status) {
  if (status == 'ConnectivityResult.mobile' ||
      status == 'ConnectivityResult.wifi') {
    return NetworkImage(logo);
  } else {
    return AssetImage('images/avatar.png');
  }
}

Expanded rowCard({
  @required String name,
  @required String logo,
  String url,
  String tag,
  @required BuildContext context,
  String status,
  String insta,
  String fb,
  String twit,
  String disc,
}) {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.all(10.0),
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
                    backgroundImage: statusImage(logo, status),
                  ),
                ),
              ),
            ),
            Hero(
              tag: tag + "T2",
              child: Text(
                '$name',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                side: BorderSide(
                    width: 1.0, color: Colors.black, style: BorderStyle.solid),
              ),
              color: Color(0xFF60FF43),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Profile(
                              url: url,
                              tag: tag,
                              status: status,
                              name: name,
                              logo: logo,
                              fb: fb,
                              insta: insta,
                              disc: disc,
                              twit: twit,
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

Widget rowGenerator(Widget a, Widget b) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      a,
      b,
    ],
  );
}

Widget topStreamers(int t, int f) {
  return rowCard(
      context: context1,
      status: connectionStatus,
      tag: '$t',
      name: streamers.topStreamer[f],
      logo: '${streamers.topStreamerLogo[f]}',
      url: streamers.topStreamersUrl[f],
      disc: streamers.topStreamerDiscord[f],
      fb: streamers.topStreamerFb[f],
      insta: streamers.topStreamerInsta[f],
      twit: streamers.topStreamerTwitter[f]);
}

Widget otherBest(int t, int f) {
  return rowCard(
      context: context1,
      status: connectionStatus,
      tag: '$t',
      name: streamers.otherBestStreamer[f],
      logo: '${streamers.otherBestStreamerLogo[f]}',
      url: streamers.otherBestStreamerUrl[f],
      disc: streamers.otherBestStreamerDiscord[f],
      fb: '',
      insta: streamers.otherBestStreamerInsta[f],
      twit: streamers.otherBestStreamerTwitter[f]);
}

Widget growing(int t, int f) {
  return rowCard(
      context: context1,
      status: connectionStatus,
      tag: '$t',
      name: streamers.growingStreamer[f],
      logo: '${streamers.growingStreamerLogo[f]}',
      url: streamers.growingStreamerUrl[f],
      disc: streamers.growingStreamerDiscord[f],
      fb: '',
      insta: '',
      twit: '');
}

Widget caster(int t, int f) {
  return rowCard(
      context: context1,
      status: connectionStatus,
      tag: '$t',
      name: streamers.caster[f],
      logo: '${streamers.casterLogo[f]}',
      url: streamers.casterUrl[f],
      disc: streamers.casterDiscord[f],
      fb: '',
      insta: '',
      twit: '');
}
