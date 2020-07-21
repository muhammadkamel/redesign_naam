import 'package:flutter/material.dart';
import 'package:redesign_naam/screen/about.dart';
import 'package:redesign_naam/screen/alarms.dart';
import 'package:redesign_naam/screen/cycles.dart';

class MyRouting {
  Route createRouting(int index) {
    return PageRouteBuilder(
      // pageBuilder: (context, animation, secondaryAnimation) {
      pageBuilder: (_, __, ___) {
        if (index == 0) {
          print('I am Home Cycles');
          return HomeCycles();
        } else if (index == 1) {
          print('I am Alarms');
          return Alarms();
        } else {
          print('I am About');
          return About();
        }
      },
//    transitionsBuilder: (context, animation, secondaryAnimation, child) {
//      var begin = Offset(0.0, 0.0);
//      var end = Offset(0.0, 0.0);
//      var curve = Curves.easeInOut;
//
//      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//
//      return SlideTransition(
//        position: animation.drive(tween),
//        child: child,
//      );
//    },
    );
  }
}
