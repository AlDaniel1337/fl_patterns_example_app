import 'package:flutter/material.dart';
import 'package:patterns_examples_app/presentation/pages/factory/controller/factory_page.controller.dart';

class CurrentShapeViewSpace extends StatelessWidget {
   
  const CurrentShapeViewSpace({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 400,
      child: CustomPaint(
        painter: CanvasPainter(),
      ),
    );
  }
}