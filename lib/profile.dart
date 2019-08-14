import 'package:flutter/material.dart';
import 'connection.dart';

//TODO:this was comment
//ConnectionsStatus _connectionsStatus = ConnectionsStatus();

class Profile extends StatefulWidget {
  final String name;
  final String url;
  final String tag;
  Profile({this.name, this.url, this.tag});
  @override
  _ProfileState createState() => _ProfileState(name, url, tag);
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
    //TODO:this was comment
//    _connectionsStatus.connect();
//    _connectionsStatus.initConnectivity();
  }

  final String name;
  final String url;
  final String tag;
  _ProfileState(this.name, this.url, this.tag);
  @override
  Widget build(BuildContext context) {
    //TODO:this was comment
    // print(_connectionsStatus.status());
    return Scaffold(
      backgroundColor: Color(0xFFFDDDEC),
      appBar: AppBar(
        backgroundColor: Color(0xFF5600E8),
        elevation: 0.0,
        title: Text(
          name,
          style: TextStyle(
            fontSize: 26.0,
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
                        onPressed: () {},
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
                Text(
                  '230K',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Family Members',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black54,
                  ),
                ),
                Column(
                  children: <Widget>[
                    reusableButton(
                        logo: 'images/youtubeIco.png',
                        title: 'Subscribe on Youtube',
                        color: Colors.red),
                    reusableButton(
                        logo: 'images/discordIcon.png',
                        title: 'Join Discord',
                        color: Colors.blue),
                    reusableButton(
                        logo: 'images/youtubeIco.png', title: 'Instagram'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget reusableButton({String logo, String title, Color color}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 5.0, 30.0, 5.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blueAccent, width: 0.5),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(60.0),
          ),
        ),
        color: Colors.white70,
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ImageIcon(
                AssetImage(logo),
                size: 40,
                color: color,
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ImageProvider imgData(String url) {
    //TODO:this was comment
//    if (_connectionsStatus.status() == 1) {
//      return NetworkImage(url);
//    }
//    if (_connectionsStatus.status() == 0) {
//      return AssetImage('images/avatar.png');
//    } else {
    return AssetImage('images/avatar.png');
    //}
  }
}
