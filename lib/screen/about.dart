import 'package:flutter/material.dart';
import 'package:redesign_naam/components/bottom_nav_bar.dart';
import 'package:redesign_naam/components/constants.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGlobalColor,
      body: Column(
        children: <Widget>[],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
