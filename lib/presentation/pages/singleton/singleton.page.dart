import 'package:flutter/material.dart';
import 'package:patterns_examples_app/presentation/pages/singleton/domain/use-cases/debug_logger.dart';

class SingletonPage extends StatelessWidget {

  static const String route = "/singleton";
   
  const SingletonPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    /// Primer y segunda instanciación
    final logger1 = DebugLogger(); //? Aqui creara la primer y unica [intancia]
    final logger2 = DebugLogger(); //? Aqui se usara la primer [intancia] sin crear una nueva

    return Scaffold(
   
      appBar: AppBar(
        title: const Text('Singleton'),
        centerTitle: true,
      ),
   
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('En que consiste', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold )),
              const Text('Consiste en tener una única instancia de una clase y utilizar dicha instancia a en toda la aplicación'),
              const SizedBox(height: 24,),
              const Text('Revisa la consola'),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.info ),
        onPressed: (){
          logger1.log('Logger1 message', 'sample error message');
          logger2.log('Logger2 message', 'sample error message');
        },
      )
    );
  }
}

