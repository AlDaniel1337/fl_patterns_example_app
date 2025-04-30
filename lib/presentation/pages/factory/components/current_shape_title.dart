import 'package:flutter/material.dart';

class CurrentShapeTitle extends StatelessWidget {

  final String title;
   
  const CurrentShapeTitle({super.key, required this.title});
  
  @override
  Widget build(BuildContext context) {

    return 
    Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 20),
    );
  }
}