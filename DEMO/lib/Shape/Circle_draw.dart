import 'package:flutter/material.dart';
import 'dart:math' as math;

class CirclePainter extends CustomPainter {
  Paint _paint;
  double _fraction;
  double _rewardNumber;
  Animation<double> _animation;

  CirclePainter(this._rewardNumber, this._fraction, this._animation) {
    _paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 10.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
  }

  void paint(Canvas canvas, Size size) {
    _paint.color = Colors.teal;
    canvas.drawArc(Offset.zero & size, -math.pi * 1.5 + math.pi / 4,
        2 * math.pi - math.pi / 2, false, _paint);

    _paint.color = Colors.orange;

    double progressRadians = ((3 * math.pi / 2) * (-_animation.value) -
        (15 - _rewardNumber) * (math.pi / 10) * (-_animation.value));
    double startAngle = (-math.pi * 1.5 + math.pi / 4);

    canvas.drawArc(
        Offset.zero & size, startAngle, -progressRadians, false, _paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return oldDelegate._fraction != _fraction;
  }
}