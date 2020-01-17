import 'package:flutter/material.dart';
import 'Streamers.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'constants.dart';

Streamers streamers = Streamers();

class SeeAll extends StatefulWidget {
  final String type;
  final token;
  SeeAll(this.type, this.token);
  @override
  _SeeAllState createState() => _SeeAllState(type, token);
}

class _SeeAllState extends State<SeeAll> {
  BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-5861053171904035/4198445369',
    size: AdSize.smartBanner,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("BannerAd event is $event");
    },
  );
  @override
  void dispose() {
    myBanner.dispose();
    super.dispose();
  }

  final String type;
  final status;
  _SeeAllState(this.type, this.status);
  @override
  Widget build(BuildContext context) {
    myBanner
      // typically this happens well before the ad is shown
      ..load()
      ..show(
        // Positions the banner ad 60 pixels from the bottom of the screen
        anchorOffset: 0.0,
        // Banner Position
        anchorType: AnchorType.bottom,
      );
    print(status);
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: FloatingActionButton(
          shape: CircleBorder(
              side: BorderSide(
            color: Color(0xFF5600E8),
            width: 0.6,
          )),
          elevation: 0.0,
          backgroundColor: Colors.transparent, //Color(0x80BFCDF5),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFF5600E8),
          ),
        ),
      ),
      backgroundColor: Color(0xFFFDEDEC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              conditionalColumn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget conditionalColumn() {
    if (type == 'TOP STREAMERS')
      return Column(
        children: <Widget>[
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
          SizedBox(
            height: 80,
          ),
        ],
      );
    if (type == 'Other Best Streamers')
      return Column(
        children: <Widget>[
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
          rowGenerator(
            otherBest(17, 8),
            otherBest(18, 9),
          ),
          rowGenerator(
            otherBest(19, 10),
            otherBest(20, 11),
          ),
          SizedBox(
            height: 80,
          ),
        ],
      );
    if (type == 'Growing Streamer') {
      return Column(
        children: <Widget>[
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
          rowGenerator(
            growing(25, 8),
            growing(26, 9),
          ),
          rowGenerator(
            growing(27, 10),
            growing(28, 11),
          ),
          rowGenerator(
            growing(29, 12),
            growing(30, 13),
          ),
          rowGenerator(
            growing(31, 14),
            growing(32, 15),
          ),
          rowGenerator(
            growing(33, 16),
            growing(34, 17),
          ),
          SizedBox(
            height: 80,
          ),
        ],
      );
    }
    if (type == 'Influencers/Casters') {
      return Column(
        children: <Widget>[
          rowGenerator(
            caster(25, 0),
            caster(26, 1),
          ),
        ],
      );
    } else
      return Center(
        child: Text('Something Went Wrong'),
      );
  }
}
