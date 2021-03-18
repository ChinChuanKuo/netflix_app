import 'package:flutter/material.dart';
import 'package:netflix_app/data/data.dart';
import 'package:netflix_app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Responsive(
        mobile: HomeScreenMobile(pageController: _pageController),
        desktop: HomeScreenDesktop(pageController: _pageController),
      );
}

class HomeScreenMobile extends StatelessWidget {
  final PageController pageController;

  const HomeScreenMobile({
    Key key,
    @required this.pageController,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 280.0,
          width: double.infinity,
          child: PageView.builder(
            controller: pageController,
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
              return MovieSelector(
                index: index,
                pageController: pageController,
              );
            },
          ),
        ),
        Container(
          height: 90.0,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            scrollDirection: Axis.horizontal,
            itemCount: labels.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(10.0),
                width: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFD45253),
                      Color(0xFF9E1F28),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF9E1F28),
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    labels[index].toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.8,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20.0),
        ContentScroll(
          images: myList,
          title: 'My List',
          imageHeight: 250.0,
          imageWidth: 150.0,
        ),
        SizedBox(height: 10.0),
        ContentScroll(
          images: popular,
          title: 'Popular',
          imageHeight: 250.0,
          imageWidth: 150.0,
        ),
      ],
    );
  }
}

class HomeScreenDesktop extends StatelessWidget {
  final PageController pageController;

  const HomeScreenDesktop({
    Key key,
    @required this.pageController,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
