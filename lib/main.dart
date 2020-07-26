import 'dart:math';

import 'package:flutter/material.dart';
import 'package:redesign_naam/widgets/alarms/alarms.dart';
import 'package:redesign_naam/widgets/cycles/cycles.dart';

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

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int currPage = 0;
  AnimationController controller;
  Animation<Offset> animation;

  @override
  initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )
      ..forward(from: 0)
      ..addListener(() {
        setState(() {});
      });
    animation = Tween(
      begin: Offset(0.0, -2),
      end: Offset(0.0, 0.5),
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: ClipperOne(),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipperOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, height)
      ..lineTo(width, height)
      ..lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyCliper extends CustomClipper<Path> {
  // @override
  // Path getClip(Size size) {
  //   var path = Path();
  //   final width = size.width;
  //   final height = size.height;
  //   path.moveTo(0, height * 0.33);
  //   path.lineTo(0, height - 50);
  //   path.quadraticBezierTo(0, height, 50, height);

  //   path.lineTo(width - 50, height);
  //   path.quadraticBezierTo(width, height, width, height - 50);

  //   path.lineTo(width, 100);
  //   path.quadraticBezierTo(width, 0, width - 50 * 3, 100);

  //   path.lineTo(50, height * 0.33 + 10);
  //   path.quadraticBezierTo(0, height * 0.33 + 50, 0, height * 0.28 + 100);
  //   return path;
  // }
  @override
  Path getClip(Size size) {
    // var path = Path();
    final width = size.width;
    final height = size.height;

    final double radius = 50;

    Path path = Path()
      ..lineTo(width, 0)
      ..arcTo(Rect.fromLTRB(0, radius, radius, height - radius), 0.5 * pi,
          0.5 * pi, false)
      ..lineTo(width, height - radius)
      ..arcTo(
          Rect.fromCircle(
              center: Offset(width - radius, height - radius), radius: radius),
          0,
          0.5 * pi,
          false)
      ..lineTo(width - radius, height)
      ..arcTo(Rect.fromLTRB(0, height - radius, radius, height), 0.5 * pi,
          0.5 * pi, false)
      ..lineTo(0, 0)
      ..arcTo(Rect.fromLTWH(0, 0, 100, 100), pi, 0.5 * pi, false)
      ..close();
    // all values
    final c1 = Offset(width / 2, height / 2); // C1
    final c2 = Offset(width - 100, 200); // C2
    final endPoint = Offset(width, height); // End point bottom

    // path.moveTo(width / 2, 0); // Center point top
    // path.lineTo(0, height); // Starting point left

    // path.cubicTo(c1.dx, c1.dy, c2.dx, c2.dy, endPoint.dx, endPoint.dy);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
