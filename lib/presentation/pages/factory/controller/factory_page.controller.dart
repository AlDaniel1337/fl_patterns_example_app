import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_examples_app/presentation/pages/factory/domain/classes/shape/shape.class.dart';
import 'package:patterns_examples_app/presentation/pages/factory/utils/shape.utils.dart';

/// FactoryPageController _factoryPageController = Get.put(FactoryPageController());

class FactoryPageController extends GetxController{
  static Rx<Shape> currentShape =  ShapeUtils.generateRandomShape(const Size(400, 400)).obs;
  
  static generateRandomShape(){
    currentShape.value = ShapeUtils.generateRandomShape(const Size(400, 400));
  }
}

class CanvasPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    FactoryPageController.currentShape.value.draw(canvas);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}