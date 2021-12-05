import 'package:flutter/material.dart';
import 'constants.dart';
//Testing Comment
class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    checkStatus();
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
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (context, i) {
              return favWidget(
                context: context,
                status: connectionStatus,
                logo: favLogo[i],
                name: favName[i],
                tag: 'T$i',
                url: favUrl[i],
                disc: favDisc[i],
                insta: favInsta[i],
                fb: favFb[i],
                twitter: favTwit[i],
              );
            },
            itemCount: favName.length,
          )),
    );
  }
}
