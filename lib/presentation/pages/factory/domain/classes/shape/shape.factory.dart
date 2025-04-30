import 'dart:math';

import 'package:flutter/material.dart';
import 'package:patterns_examples_app/presentation/pages/factory/domain/classes/shape/circle.dart';
import 'package:patterns_examples_app/presentation/pages/factory/domain/classes/shape/null_shape.dart';
import 'package:patterns_examples_app/presentation/pages/factory/domain/classes/shape/rectangle.dart';
import 'package:patterns_examples_app/presentation/pages/factory/domain/classes/shape/shape.class.dart';


/// Formas disponibles
enum ShapesEnum { rectangle, circle }

/// Forma a crear
class ShapeBuildContext {
  late Color color;
  late ShapesEnum shapeType;
  late List<Point> vertices;
  late double radius;
  late double width;
  late double height;
}

///  Shape Factory, sigue el metodo [Factory Method Pattern (Simplified)]
class ShapeFactory {

  //* Constructor privado que previene la instanciación
  ShapeFactory._();

  /// Factory method principal para crear las formas
  static Shape createShape(ShapeBuildContext context) {

    Shape result = NullShape();

    //* Crear forma segun el [shape] seleccionado
    switch (context.shapeType) {
      case ShapesEnum.rectangle:
        result = RectangleShape(
          color:    context.color, 
          position: context.vertices[0], 
          width:    context.width, 
          height:   context.height
        );
        break;

      case ShapesEnum.circle:
        result = CircleShape(
          color:    context.color, 
          position: context.vertices[0], 
          radius:   context.radius
        );
        break;
    }

    return result;
  }
}