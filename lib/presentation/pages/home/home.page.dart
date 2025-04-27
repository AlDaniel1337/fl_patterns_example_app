import 'package:flutter/material.dart';
import 'package:patterns_examples_app/presentation/pages/home/components/menu.dart';

class HomePage extends StatelessWidget {

  static const String route = "/home";
   
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        title: const Text('Patrondes de diseño'),
        centerTitle: true,
      ),
   
      body: const Center(
        child: Menu()
      ),
    );
  }
}

