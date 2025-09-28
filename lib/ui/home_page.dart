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
                    text: 'Laptop',
                    confidenceScore: 0.64,
                    rect: const Rect.fromLTRB(160, 23, 308, 217),
                  ),
                  DetectedObject(
                    text: "Phone",
                    confidenceScore: 0.57,
                    rect: const Rect.fromLTRB(315, 103, 347, 154),
                  ),
                  DetectedObject(
                    text: "Coffe",
                    confidenceScore: 0.60,
                    rect: const Rect.fromLTRB(315, 158, 386, 216),
                  ),
                  DetectedObject(
                    text: "Keyboard",
                    confidenceScore: 0.48,
                    rect: const Rect.fromLTRB(170, 122, 297, 174),
                  ),
                  DetectedObject(
                    text: "Note",
                    confidenceScore: 0.43,
                    rect: const Rect.fromLTRB(64, 114, 160, 214),
                  ),
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
