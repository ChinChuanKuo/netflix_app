import 'package:flutter/material.dart';
import 'package:netflix_app/config/palette.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        Palette.title,
        style: TextStyle(
          color: Palette.facebookBlue,
          fontSize: 45.0,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.2,
        ),
      ),
      leading: IconButton(
        padding: EdgeInsets.only(left: 30.0),
        onPressed: () => print('Menu'),
        icon: Icon(Icons.menu),
        iconSize: 30.0,
        color: Colors.black,
      ),
      actions: <Widget>[
        IconButton(
          padding: EdgeInsets.only(right: 30.0),
          onPressed: () => print('Search'),
          icon: Icon(Icons.search),
          iconSize: 30.0,
          color: Colors.black,
        ),
      ],
    );
  }
}
