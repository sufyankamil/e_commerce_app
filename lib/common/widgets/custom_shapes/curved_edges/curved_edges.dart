import 'package:flutter/material.dart';

class ECustomCurvedEdges extends CustomClipper<Path> {
  final double offset;

  ECustomCurvedEdges({this.offset = 0});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);

    /// First curve on the left side of the screen (bottom)
    final firstCurve = Offset(0, size.height - 20);
    final endCurve = Offset(30, size.height - 20);

    /// Quadratic bezier curve to create a curve on the left side of the screen
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, endCurve.dx, endCurve.dy);

    /// Second on the center of the screen (bottom)
    final secondF1Curve = Offset(0, size.height - 20);
    final secondF2Curve = Offset(size.width - 30, size.height - 20);

    /// Quadratic bezier curve to create a curve on the center of the screen
    path.quadraticBezierTo(
        secondF1Curve.dx, secondF1Curve.dy, secondF2Curve.dx, secondF2Curve.dy);

    /// Third curve on the right side of the screen (bottom)
    final thirdF1Curve = Offset(size.width, size.height - 20);
    final thirdF2Curve = Offset(size.width, size.height);

    /// Quadratic bezier curve to create a curve on the right side of the screen
    path.quadraticBezierTo(
        thirdF1Curve.dx, thirdF1Curve.dy, thirdF2Curve.dx, thirdF2Curve.dy);

    /// Line to close the path
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(ECustomCurvedEdges oldClipper) => true;
}
