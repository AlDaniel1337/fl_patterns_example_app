import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_examples_app/config/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Patters App',
      debugShowCheckedModeBanner: false,

      // Rutas
      initialRoute: Routes.home,
      getPages: Routes.getRoutes(),
      navigatorKey: Get.key,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
    );
  }
}