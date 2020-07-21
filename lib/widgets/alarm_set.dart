import 'package:flutter/material.dart';
import 'package:redesign_naam/components/constants.dart';

class AlarmSet extends StatelessWidget {
  final DateTime myDate;
  final String apTime;

  const AlarmSet({Key key, this.myDate, this.apTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
//                          color: Colors.amber,
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(
          width: 3.0,
          color: Colors.grey[200],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            myDate.hour > 12
                ? (myDate.hour - 12).toString()
                : myDate.hour.toString(),
            style: kStyleDark,
          ),
          Text(
            ' : ',
            style: kStyleDark,
          ),
          Text(
            myDate.minute.toString(),
            style: kStyleDark,
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            myDate.hour >= 12 ? apTime : '',
            style: kStyleDark,
          ),
          Container(
            width: 28.0,
            height: 28.0,
            padding: EdgeInsets.zero,
            margin: EdgeInsets.all(7.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff3DDD15),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.check),
            ),
          ),
        ],
      ),
    );
  }
}
