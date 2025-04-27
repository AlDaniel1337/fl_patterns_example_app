
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_examples_app/presentation/pages/pages.dart';

/// Navegacion
class Navigation{

  // Ruta principal
  static const String home = HomePage.route;
  
  /// Listado con las rutas de la app
  static List<GetPage> getRoutes(){    
    List<GetPage> pages = [
      GetPage(name: HomePage.route,      page:() => const HomePage()),
      GetPage(name: SingletonPage.route, page:() => const SingletonPage()),
    ];
    
    return pages;
  } 

  /// Moverse a otra pantalla dejando la anterior en el historial
  static goToPage({required String page}) => Get.toNamed(page);
  
  /// Moverse a otra pantalla quitando la anterior en el historial
  static goToPageOffNamed({required String page}) => Get.offNamed(page);

  /// Cerrar y regresar a la página anterior
  static goBackToPage({required BuildContext context}) => Navigator.of(context).pop(true);
}