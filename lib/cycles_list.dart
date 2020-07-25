import 'package:flutter/material.dart';
import 'package:redesign_naam/screen/cycles.dart';

HomeCycles myCycle = HomeCycles();

final List<Widget> mySlider = [
  // First widget
  GestureDetector(
    onTap: () {
      print('I am index 0');
      movePageZero(0);
      // moveToMyPage(0);
    },
    child: Container(
      width: 400,
      padding: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xffCCEBFF),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'Cycle 1',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.alarm_on,
              color: Colors.blueAccent,
              size: 140,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
//                    child: Text(
//                      '${myDate.hour}:${myDate.minute}',
//                      style: TextStyle(
//                        color: Color(0xff0099FF),
//                        fontSize: 30,
//                      ),
//                    ),
              ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: 50,
            height: 26,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Icon(
              Icons.add,
              color: Color(0xff505050),
            ),
          ),
        ],
      ),
    ),
  ),
  // Second widget
  GestureDetector(
    onTap: () {
      print('I am index 1');
      moveToMyPage(1);
    },
    child: Container(
      width: 400,
      padding: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xffFFCCCC),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'Cycle 2',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 30.0, fontFamily: 'Montserrat'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.alarm_on,
              color: Colors.redAccent,
              size: 140,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
//                    child: Text(
//                      '${myDate.hour}:${myDate.minute}',
//                      style: TextStyle(
//                        color: Color(0xff0099FF),
//                        fontSize: 30,
//                      ),
//                    ),
              ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: 50,
            height: 26,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Icon(
              Icons.add,
              color: Color(0xff505050),
            ),
          ),
        ],
      ),
    ),
  ),
  // Third widget
  GestureDetector(
    onTap: () {
      print('I am index 2');
      moveToMyPage(2);
    },
    child: Container(
      width: 400,
      padding: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xffCCFFCC),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'Cycle 3',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 30.0, fontFamily: 'Montserrat'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.alarm_on,
              color: Colors.greenAccent,
              size: 140,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
//                    child: Text(
//                      '${myDate.hour}:${myDate.minute}',
//                      style: TextStyle(
//                        color: Color(0xff0099FF),
//                        fontSize: 30,
//                      ),
//                    ),
              ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: 50,
            height: 26,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Icon(
              Icons.add,
              color: Color(0xff505050),
            ),
          ),
        ],
      ),
    ),
  ),
  // Four widget
  GestureDetector(
    onTap: () {
      print('I am index 3');
      moveToMyPage(3);
    },
    child: Container(
      width: 400,
      padding: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.amberAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'Cycle 4',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 30.0, fontFamily: 'Montserrat'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.alarm_on,
              color: Colors.orange,
              size: 140,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
//                    child: Text(
//                      '${myDate.hour}:${myDate.minute}',
//                      style: TextStyle(
//                        color: Color(0xff0099FF),
//                        fontSize: 30,
//                      ),
//                    ),
              ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: 50,
            height: 26,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Icon(
              Icons.add,
              color: Color(0xff505050),
            ),
          ),
        ],
      ),
    ),
  ),
  // Five widget
  GestureDetector(
    onTap: () {
      print('I am index 4');
      moveToMyPage(4);
    },
    child: Container(
      width: 400,
      padding: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xffCCFFCC),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'Cycle 5',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 30.0, fontFamily: 'Montserrat'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.alarm_on,
              color: Colors.greenAccent,
              size: 140,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
//                    child: Text(
//                      '${myDate.hour}:${myDate.minute}',
//                      style: TextStyle(
//                        color: Color(0xff0099FF),
//                        fontSize: 30,
//                      ),
//                    ),
              ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: 50,
            height: 26,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Icon(
              Icons.add,
              color: Color(0xff505050),
            ),
          ),
        ],
      ),
    ),
  ),
  // Six widget
  GestureDetector(
    onTap: () {
      print('I am index 5');
      movePageZero(5);
    },
    child: Container(
      width: 400,
      padding: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.amberAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'Cycle 6',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 30.0, fontFamily: 'Montserrat'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.alarm_on,
              color: Colors.orange,
              size: 140,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
//                    child: Text(
//                      '${myDate.hour}:${myDate.minute}',
//                      style: TextStyle(
//                        color: Color(0xff0099FF),
//                        fontSize: 30,
//                      ),
//                    ),
              ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: 50,
            height: 26,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Icon(
              Icons.add,
              color: Color(0xff505050),
            ),
          ),
        ],
      ),
    ),
  ),
];
