import 'package:bounding_box_app/models/detected_object.dart';
import 'package:flutter/material.dart';

class BoundingBoxCustomPainter extends CustomPainter {
  final List<DetectedObject> detectedObjects;
  BoundingBoxCustomPainter({required this.detectedObjects});

  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(covariant BoundingBoxCustomPainter oldDelegate) {
    return detectedObjects != oldDelegate.detectedObjects;
  }
}
