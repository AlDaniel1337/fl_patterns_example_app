import 'dart:math';
import 'package:flutter/material.dart';
import 'package:patterns_examples_app/presentation/pages/factory/domain/classes/shape/shape.class.dart';

class CircleShape extends Shape {
  late double _radius;

  CircleShape({
    required Color color, 
    required Point position,
    required double radius
  }) {
    color = color;
    name = "Circle";
    _radius = radius = radius;
    vertices.add(position);
  }

  /// Dibujar circulo
  @override
  void draw(Canvas canvas) {
    
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawCircle(
      Offset(vertices[0].x.toDouble(), vertices[0].y.toDouble()),
      _radius,
      paint
    );
  }

  @override
  double getArea() {
    return 2 * pi * _radius;
  }
}
