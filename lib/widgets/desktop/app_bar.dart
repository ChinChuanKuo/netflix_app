import 'package:flutter/material.dart';
import 'package:netflix_app/config/palette.dart';

class DesktopAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      height: 65.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // ignore: deprecated_member_use
              RaisedButton(
                padding: const EdgeInsets.all(18.0),
                color: Color.fromRGBO(229, 9, 20, 1),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                onPressed: () => print("signin"),
              )
            ],
          )
        ],
      ),
    );
  }
}
