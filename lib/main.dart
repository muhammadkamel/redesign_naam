import 'package:flutter/material.dart';
import 'package:redesign_naam/widgets/alarms/alarms.dart';
import 'package:redesign_naam/widgets/cycles/cycles.dart';

import 'widgets/custom_painter/draw_painter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController pageController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      initialRoute: 'HomeCycles',
      routes: {
        'Cycles': (context) => HomeCycles(),
        'Alarms': (context) => Alarms(),
        'MyHomePage': (context) => MyHomePage(),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  PageController _pageController;
  // ignore: unused_field
  TabController _tabController;
  int currPage = 0;

  @override
  initState() {
    super.initState();
    print('I have do this!');
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    _pageController = PageController(
      initialPage: currPage,
      viewportFraction: 0.8,
      keepPage: false,
    );
    _pageController.addListener(() {
      setState(() {
        currPage = _pageController.page.toInt();
      });
    });
  }

  @override
  dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Create a circle
          Center(
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey[50],
              height: 300,
              width: 300,
              child: CustomPaint(
                painter: MyPainter(),
                child: Center(
                  child: Text(
                    'Hi',
                    style: const TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // body: SecondCarousel(
      //   pageController: _pageController,
      //   posts: posts,
      //   title: 'Title',
      // ),
    );
  }
}
