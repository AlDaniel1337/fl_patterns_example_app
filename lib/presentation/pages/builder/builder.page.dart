import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_examples_app/presentation/pages/builder/controller/builder_page.controller.dart';

class BuilderPage extends StatelessWidget {

  static const String route = "/builder";
   
  const BuilderPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    BuilderPageController builderPageController = Get.put(BuilderPageController());


    return Scaffold(
   
      appBar: AppBar(
        title: const Text('Builder'),
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

              Text('Es un patrón de diseño creacional que nos permite construir objetos complejos paso a paso.'),

              Text('El patrón nos permite producir distintos tipos y representacionesde un objeto empleando el mismo código de construcción'),

              Obx( () => Padding(
                padding: const EdgeInsets.all(25), 
                child: Text( 
                  builderPageController.pizzaName.value, 
                  style: TextStyle( fontSize: 22 ), 
                ),
              )),
              
          ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => builderPageController.buildPizza(),
        tooltip: 'Build Pizza',
        child: const Icon(Icons.add),
      ), 
    );
  }
}

