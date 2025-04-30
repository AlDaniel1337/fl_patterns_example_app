import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_examples_app/presentation/pages/factory/components/current_shape_title.dart';
import 'package:patterns_examples_app/presentation/pages/factory/components/current_shape_view_space.dart';
import 'package:patterns_examples_app/presentation/pages/factory/controller/factory_page.controller.dart';

class FactoryPage extends StatelessWidget {

  static const String route = "/factory";
   
  const FactoryPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
   
      appBar: AppBar(
        title: const Text('Factory'),
        centerTitle: true,
      ),
   
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('En que consiste', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold )),

              Text('Consiste en crear objetos sin especificar la clase exacta del objeto que se creará.'),

              SizedBox(
                height: 800,
                child: Obx( () => ListView(
                  children: [
                    CurrentShapeTitle( title: FactoryPageController.currentShape.value.getName, ),
                    CurrentShapeViewSpace(),

                    ElevatedButton(
                      child: const Text('Generar nueva forma'),
                      onPressed: () => FactoryPageController.generateRandomShape(),
                    ),
                ]
                ),
              ))
          ],
          ),
        ),
      ),
    );
  }
}

