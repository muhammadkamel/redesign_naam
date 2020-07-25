import 'package:flutter/material.dart';
import 'package:redesign_naam/components/constants.dart';
import 'package:redesign_naam/widgets/bottom_nav_bar/routes.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  MyRouting myRouter = MyRouting();
  int _selectedIndex = 0;

  @override
  void initState() {
    setState(() {
      _selectedIndex = 0;
    });
    super.initState();
  }

  void _onPressed(int val) {
    _selectedIndex = val;
    switch (_selectedIndex) {
      case 0:
        Navigator.of(context).push(
          myRouter.createRouting(_selectedIndex),
        );
        break;
      case 1:
        Navigator.of(context).push(
          myRouter.createRouting(_selectedIndex),
        );
        break;
      case 2:
        Navigator.of(context).push(
          myRouter.createRouting(_selectedIndex),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      child: Container(
        margin: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 20.0),
        decoration: BoxDecoration(
//          color: Color(0xffEAEAF5),
          color: Color(0xfffafafa),
          boxShadow: kBoxShadow,
          borderRadius: BorderRadius.circular(500.0),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.grey[700],
          onTap: _onPressed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm_add),
              title: Text('Alarm'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              title: Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}
