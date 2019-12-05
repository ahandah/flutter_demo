

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print("sdfsdf");
    return _ProgressBar();
  }
}

class _ProgressBar extends State {
  double x = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: CustomPaint(
        painter: ProgressBarPainter(x),
        size: Size.infinite,
      ),

      onPanUpdate: (d) {
        setState(() {
          this.x = d.globalPosition.dx;
        });
      },
    );
  }
}

class ProgressBarPainter extends CustomPainter {
  double radius = 20;
  double posX;
  double padding = 10;

  ProgressBarPainter(double posX) {
    this.posX = posX;
  }

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();
    final width = size.width;
    final height = size.height;
    final baseLineHeight = height / 2;

    final maxWidth = width - padding - radius;
    final minWidth = padding + radius;

    double ballX = posX;
    if (ballX < minWidth) ballX = minWidth;
    if (ballX > maxWidth) ballX = maxWidth;

    paint.color = Colors.black;
    canvas.drawLine(Offset(minWidth, baseLineHeight),Offset(maxWidth, baseLineHeight), paint);
    canvas.drawCircle(Offset(ballX, baseLineHeight), radius, paint);
  }

  @override
  bool shouldRepaint(ProgressBarPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate.posX != this.posX;
  }
}
