import 'package:flutter/material.dart';
import 'package:netflix_app/config/palette.dart';
import 'package:netflix_app/widgets/widgets.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 65.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            iconSize: 25.0,
            color: Colors.black,
            onPressed: () => print("Menu"),
          ),
          Center(
            child: Text(
              Palette.title,
              style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 25.0,
            color: Colors.black,
            onPressed: () => print("Search"),
          ),
        ],
      ),
    );
  }
}
