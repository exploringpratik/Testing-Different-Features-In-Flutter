import 'package:flutter/material.dart';
import 'dart:math';

class ArcScreen extends StatefulWidget {
  @override
  _ArcScreenState createState() => _ArcScreenState();
}

double degreeToRadian({double angleInDegree}) {
  return angleInDegree * (pi / 180);
}

class _ArcScreenState extends State<ArcScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Arc'),
        ),
        body: Center(
          widthFactor: double.infinity,
          child: Stack(children: <Widget>[
            CustomPaint(
              size: Size(300, 300),
              painter: MyPainter(startAngle: 0, sweepAngle: 50),
            ),
            CustomPaint(
              size: Size(300, 300),
              painter: MyPainter(startAngle: 50, sweepAngle: 130),
            ),
            CustomPaint(
              size: Size(300, 300),
              painter: MyPainter(startAngle: 180, sweepAngle: 40),
            ),
            CustomPaint(
              size: Size(300, 300),
              painter: MyPainter(startAngle: 220, sweepAngle: 140),
            )
          ]),
        ));
  }
}

class MyPainter extends CustomPainter {
  double startAngle, sweepAngle;

  MyPainter({this.startAngle, this.sweepAngle});

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = 1000.0;
    final Paint paint = new Paint()
//      ..colorFilter =
      ..isAntiAlias = true
      ..strokeWidth = 1.0
//      ..color = Colors.blue[500]
      ..style = PaintingStyle.stroke;

//    canvas.drawArc(new Rect.fromLTWH(0.0, 0.0, size.width / 2, size.height / 2),
//        10.0, 20.0, false, paint);

    canvas.drawArc(
        new Rect.fromLTWH(0.0, 0.0, size.width / 2, size.height / 2),
        degreeToRadian(angleInDegree: startAngle),
        degreeToRadian(angleInDegree: sweepAngle),
        true,
        paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
