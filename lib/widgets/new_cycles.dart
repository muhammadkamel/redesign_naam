import 'package:flutter/material.dart';

class NewCycles extends StatefulWidget {
  NewCycles({Key key}) : super(key: key);

  @override
  _NewCyclesState createState() => _NewCyclesState();
}

class _NewCyclesState extends State<NewCycles> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        return _buildPage();
      },
      itemCount: 6,
    );
  }
}

Widget _buildPage() {
  return Container(
    child: Text('New Container!'),
  );
}
