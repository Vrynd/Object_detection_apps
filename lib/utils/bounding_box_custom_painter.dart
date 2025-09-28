import 'package:bounding_box_app/models/detected_object.dart';
import 'package:flutter/material.dart';

class BoundingBoxCustomPainter extends CustomPainter {
  final List<DetectedObject> detectedObjects;
  BoundingBoxCustomPainter({required this.detectedObjects});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint myPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 2;

    for (var detectedObject in detectedObjects) {
      canvas.drawRect(
          detectedObject.rect, myPaint..style = PaintingStyle.stroke);
    }
  }

  @override
  bool shouldRepaint(covariant BoundingBoxCustomPainter oldDelegate) {
    return detectedObjects != oldDelegate.detectedObjects;
  }
}
