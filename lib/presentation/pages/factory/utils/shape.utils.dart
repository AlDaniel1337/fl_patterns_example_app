import 'dart:math';
import 'package:flutter/material.dart';
import 'package:patterns_examples_app/presentation/pages/factory/domain/classes/shape/null_shape.dart';
import 'package:patterns_examples_app/presentation/pages/factory/domain/classes/shape/shape.class.dart';
import 'package:patterns_examples_app/presentation/pages/factory/domain/classes/shape/shape.factory.dart';

class ShapeUtils {

  static Shape generateRandomShape(Size constraints) {

    Size margins = const Size(20, 20);
    Size radiusMinMax = const Size(4, 40);
    Size widthHeightMinMax = const Size(15, 100);
    Shape result = NullShape();
    Random rnd = Random();


    /// Generar [SHAPE] de forma aleatoria
    ShapesEnum shapeType = ShapesEnum.values[
      Random().nextInt(ShapesEnum.values.length)
    ];

    debugPrint("generating random shape...");
    debugPrint("generated $shapeType");

    switch (shapeType) {
      case ShapesEnum.rectangle:

          Point originPoint = Point(
            rnd.nextDouble() * (constraints.width - margins.width),
            rnd.nextDouble() * (constraints.height - margins.height)
          );
          Color randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
          double width  = rnd.nextDouble() * (widthHeightMinMax.height - widthHeightMinMax.width) + widthHeightMinMax.width;
          double height = rnd.nextDouble() * (widthHeightMinMax.height - widthHeightMinMax.width) + widthHeightMinMax.width;

          //* Generar rectangulo
          ShapeBuildContext context = ShapeBuildContext()
            ..shapeType = shapeType
            ..color = randomColor
            ..vertices = [originPoint]
            ..width = width
            ..height = height;
          result = ShapeFactory.createShape(context);
        
        break;

      case ShapesEnum.circle:
        
          double randomRadius = rnd.nextDouble() * (radiusMinMax.height - radiusMinMax.width) + radiusMinMax.width;
          Point originPoint = Point(
            rnd.nextDouble() * (constraints.width - margins.width - randomRadius / 2), 
            rnd.nextDouble() * (constraints.height - margins.height)
          );
          Color randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];

          //* Generar circulo
          ShapeBuildContext context = ShapeBuildContext()
            ..shapeType = shapeType
            ..color = randomColor
            ..vertices = [originPoint]
            ..radius = randomRadius;
          result = ShapeFactory.createShape(context);
        
        break;
    }
    return result;
  }
}