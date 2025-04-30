import 'package:flutter/material.dart';
import 'package:patterns_examples_app/presentation/pages/factory/domain/classes/shape/shape.class.dart';


/// Do-nothing shape placeholder.
class NullShape extends Shape {
  
  NullShape() {
    name = "NullShape";
  }

  @override
  void draw(Canvas canvas) {
    // TODO: implement draw
  }

  @override
  double getArea() {
    return 0.0;
  }
}