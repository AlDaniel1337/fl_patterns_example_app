import 'dart:math';
import 'package:flutter/material.dart';
import 'package:patterns_examples_app/presentation/pages/factory/domain/classes/shape/shape.class.dart';

class RectangleShape extends Shape {
  late double _width;
  late double _height;
  
  RectangleShape({
    required Color color, 
    required Point position, 
    required double width, 
    required double height
  }) {
    color = color;
    name = "Rectangle";
    _width = width;
    _height = height;
    vertices.add(position);
    vertices.add(Point(position.x + width, position.y));
    vertices.add(Point(position.x, position.y - height));
    vertices.add(Point(position.x + width, position.y - height));
  }

  /// Dibujar cuadrado
  @override
  void draw(Canvas canvas) {

    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawRect( 
      Offset( vertices[0].x.toDouble(),  vertices[0].y.toDouble()) 
      & Size(_width, _height), 
      paint
    );
  }

  @override
  double getArea() {
    return _width * _height;
  }
}
