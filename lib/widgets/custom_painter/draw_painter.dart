import 'dart:math';
import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  var path = Path();
  // Line 1
  final p1 = Offset(0, 200);
  final p2 = Offset(300, 200);
  final _paint1 = Paint()
    ..color = Colors.indigo
    ..strokeWidth = 10.0
    ..style = PaintingStyle.stroke;

// Line 2
  final p3 = Offset(0, 250);
  final p4 = Offset(300, 250);
  final _paint2 = Paint()
    ..color = Colors.orange
    ..strokeWidth = 50.0
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    // Indigo line
    canvas.drawLine(p1, p2, _paint1);
    // Orange line
    canvas.drawLine(p3, p4, _paint2);

    final height = size.height;
    final width = size.width;

// Draw a circle
    Paint painter = Paint()..color = Colors.blueAccent;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(height / 2, width * 0.0001),
        height: height,
        width: width,
      ),
      pi,
      pi * 2,
      true,
      painter,
    );

    // Draw somethin strange
    final p7 = Offset(height * -0.1, 0);
    final p8 = Offset(height * 1.10, 0);
    final _paint3 = Paint()
      ..color = Colors.greenAccent
      ..strokeWidth = 200.0
      ..style = PaintingStyle.fill;
    canvas.drawLine(p7, p8, _paint3);
    path.lineTo(0, height);
    path.moveTo(height, width);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
