import 'dart:math';
import 'package:flutter/material.dart';

/// Requisitoms minimos para un [Shape]
abstract class Shape {
  Color color = Colors.amber;
  String name = "Shape";
  List<Point> vertices = <Point>[];

  /// Dibujar la forma
  void draw(Canvas canvas);

  /// Obtener area
  double getArea();

  Color get getColor {
    return color;
  }

  String get getName {
    return name;
  }
}
