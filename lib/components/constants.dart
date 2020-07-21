import 'package:flutter/material.dart';

const kGlobalColor = Color(0xffF8F8F8);

const kStyle = TextStyle(
  fontSize: 26.0,
  color: Colors.black12,
);

const kStyleDark = TextStyle(
  fontSize: 30.0,
  color: Colors.black54,
);

final Color myColor = Colors.grey[300].withOpacity(0.5);

final kBoxShadow = [
  BoxShadow(
    color: myColor,
    offset: Offset.zero,
    blurRadius: 10.0,
    spreadRadius: 5.0,
  ),
];
