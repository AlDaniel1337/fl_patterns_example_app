import 'dart:math';
import 'package:flutter/material.dart';
import 'package:patterns_examples_app/presentation/pages/factory/domain/classes/shape/shape.class.dart';

class Triangle extends Shape {
  
  Triangle({
    required Color color, 
    required Point v1, 
    required Point v2, 
    required Point v3
  }) {
    color = color;
    name = "Triangle";
    vertices.add(v1);
    vertices.add(v2);
    vertices.add(v3);
  }

  /// Dibujar triangulo
  @override
  void draw(Canvas canvas) {
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    //canvas.drawPath(path, paint);
  }

  @override
  double getArea() {
    Point v1 = vertices[0];
    Point v2 = vertices[1];
    Point v3 = vertices[2];
    num area;
    area = v1.x * (v2.y - v3.y) + v2.x * (v3.y - v1.y) + v3.x * (v1.y - v2.y);
    return area.toDouble();
  }
}