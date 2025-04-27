import 'package:patterns_examples_app/presentation/pages/home/components/menu_option.entity.dart';
import 'package:patterns_examples_app/presentation/pages/pages.dart';

class MenuItems{
   
  static List<MenuOption> menuElements = [

    MenuOption( 
      page: SingletonPage.route,
      title: "Singleton",
      description: "Una única instancia"
    ),
    
    MenuOption( 
      page: "",
      title: "Factory",
      description: "Crear objetos sin especificarla clase exacta"
    ),

    MenuOption( 
      page: "",
      title: "Builder",
      description: "Encapsular lógica reusable de construcción de objetos complejos"
    ),

    MenuOption( 
      page: "",
      title: "Adapter",
      description: "Pasar la información o código a un código fácil de usar en la aplicación"
    ),

    MenuOption( 
      page: "",
      title: "Strategy",
      description: "Extraer algoritmos relacionados"
    ),

    MenuOption( 
      page: "",
      title: "Observer",
      description: "Crear un mecanismo de notificación de eventos"
    ),

    MenuOption( 
      page: "",
      title: "State",
      description: "Alterar comportamiento de un objeto cuando su estado interno cambie"
    ),

  ];
}