import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redesign_naam/components/bottom_nav_bar.dart';
import 'package:redesign_naam/components/constants.dart';
import 'package:redesign_naam/widgets/alarms/alarm_set.dart';

class Alarms extends StatefulWidget {
  @override
  _AlarmsState createState() => _AlarmsState();
}

class _AlarmsState extends State<Alarms> {
  var myDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGlobalColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.89,
                height: MediaQuery.of(context).size.height * 0.55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: kBoxShadow,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.70,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 1.0),
//                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      AlarmSet(
                        myDate: myDate,
                        apTime: 'AM',
                      ),
                      AlarmSet(
                        myDate: myDate,
                        apTime: 'AM',
                      ),
                      AlarmSet(
                        myDate: myDate,
                        apTime: '',
                      ),
                      AlarmSet(
                        myDate: myDate,
                        apTime: 'AM',
                      ),
                      AlarmSet(
                        myDate: myDate,
                        apTime: 'AM',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
//                    height: MediaQuery.of(context).size.height * 0.09,
                    child: FlatButton(
                      color: Colors.blue,
                      padding: EdgeInsets.all(12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      onPressed: () {
                        print('Hi from flat button!');
                      },
                      child: Text(
                        'Repeat?',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
//                    height: MediaQuery.of(context).size.height * 0.09,
                    child: FlatButton(
                      color: Colors.blue,
                      padding: EdgeInsets.all(12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      onPressed: () {
                        print('Hi from flat button!');
                      },
                      child: Text(
                        'History',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.78,
                child: FlatButton(
                  color: Colors.blue,
                  padding: EdgeInsets.all(14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  onPressed: () {
                    print('Hi from flat button!');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
