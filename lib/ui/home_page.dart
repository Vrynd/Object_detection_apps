import 'package:bounding_box_app/models/detected_object.dart';
import 'package:bounding_box_app/utils/bounding_box_custom_painter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Object Detection",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          elevation: 1.5,
          shadowColor: Colors.grey.shade300,
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CustomPaint(
                foregroundPainter: BoundingBoxCustomPainter(detectedObjects: [
                  DetectedObject(
                      rect: const Rect.fromLTRB(160, 23, 308, 217),
                      text: 'Laptop',
                      confidenceScore: 0.64)
                ]),
                child: Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/macbook-air.jpg",
                      fit: BoxFit.cover,
                      width: 350,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
