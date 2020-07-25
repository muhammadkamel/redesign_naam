import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyPainter extends CustomPainter {
  // Line 1
  final p1 = Offset(0, 320);
  final p2 = Offset(300, 320);
  // Line 2
  final p3 = Offset(0, 200);
  final p4 = Offset(300, 200);

  final _paint = Paint()
    ..color = Colors.indigo
    ..strokeWidth = 12
    ..style = PaintingStyle.stroke;

  final _paint2 = Paint()
    ..color = Colors.orange
    ..strokeWidth = 50
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    // final width = size.width;
    // final height = size.height;
    canvas.drawLine(p1, p2, _paint);
    // canvas.drawOval(Rect.fromLTRB(0, 0, width, height), _paint);
    canvas.drawLine(p3, p4, _paint2);
    // canvas.drawOval(Rect.fromLTRB(0, 0, width, height), _paint2);

    Paint painter = Paint()..color = Colors.blue;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi,
      math.pi,
      false,
      painter,
    );

    Paint backCirclePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.blue;

    Paint frontCirclePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.white;

    num percentage;
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: 100.0),
        0.0,
        -(2 * math.pi * percentage) / 100,
        true,
        backCirclePaint);

// percentage is responsible for the amount(angle) of arc you want to build.

    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2 + 10.0, size.height / 2),
            radius: 90.0),
        0.0,
        -(2 * math.pi * percentage) / 100,
        true,
        frontCirclePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
