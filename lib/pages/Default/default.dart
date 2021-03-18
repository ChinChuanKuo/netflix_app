import 'package:flutter/material.dart';
import 'package:netflix_app/pages/Home/home.dart';
import 'package:netflix_app/widgets/widgets.dart';

class DefaultScreen extends StatefulWidget {
  @override
  _DefaultScreenState createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 100.0),
        child: Responsive.isDesktop(context) ? DesktopAppBar() : MobileAppBar(),
      ),
      body: HomeScreen(),
    );
  }
}
