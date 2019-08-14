import 'package:flutter/material.dart';
import 'connection.dart';
import 'profile.dart';
import 'Streamers.dart';

Streamers streamers = Streamers();
//TODO:this was comment
//ConnectionsStatus _connections = ConnectionsStatus();

class SeeAll extends StatefulWidget {
  final String type;
  SeeAll(this.type);
  @override
  _SeeAllState createState() => _SeeAllState(type);
}

class _SeeAllState extends State<SeeAll> {
  final String type;
  _SeeAllState(this.type);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
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
          SizedBox(
            height: 80,
          ),
        ],
      );
    if (type == 'Other Best Streamers')
      return Column(
        children: <Widget>[
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
          profiledRow(
              tag1: 'T17',
              name1: streamers.otherBestStreamer[8],
              logo1: streamers.otherBestStreamerLogo[8],
              name2: streamers.otherBestStreamer[9],
              logo2: streamers.otherBestStreamerLogo[9]),
          profiledRow(
              tag1: 'T18',
              name1: streamers.otherBestStreamer[10],
              logo1: streamers.otherBestStreamerLogo[10],
              name2: streamers.otherBestStreamer[11],
              logo2: streamers.otherBestStreamerLogo[11]),
          SizedBox(
            height: 80,
          ),
        ],
      );
    if (type == 'Growing Streamer') {
      return Column(
        children: <Widget>[
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
          profiledRow(
            tag1: 'T13',
            name1: streamers.growingStreamer[8],
            logo1: streamers.growingStreamerLogo[8],
            name2: streamers.growingStreamer[9],
            logo2: streamers.growingStreamerLogo[9],
          ),
          profiledRow(
            tag1: 'T14',
            name1: streamers.growingStreamer[10],
            logo1: streamers.growingStreamerLogo[10],
            name2: streamers.growingStreamer[11],
            logo2: streamers.growingStreamerLogo[11],
          ),
          profiledRow(
            tag1: 'T15',
            name1: streamers.growingStreamer[12],
            logo1: streamers.growingStreamerLogo[12],
            name2: streamers.growingStreamer[13],
            logo2: streamers.growingStreamerLogo[13],
          ),
          profiledRow(
            tag1: 'T16',
            name1: streamers.growingStreamer[14],
            logo1: streamers.growingStreamerLogo[14],
            name2: streamers.growingStreamer[15],
            logo2: streamers.growingStreamerLogo[15],
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
          profiledRow(
            tag1: 'T13',
            name1: streamers.caster[0],
            logo1: streamers.casterLogo[0],
            name2: streamers.caster[1],
            logo2: streamers.casterLogo[1],
          )
        ],
      );
    } else
      return Center(
        child: Text('Something Went Wrong'),
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
                      backgroundImage: NetworkImage(logo),
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
}
