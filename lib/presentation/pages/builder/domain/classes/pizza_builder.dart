import 'package:flutter/material.dart';
import 'package:patterns_examples_app/presentation/pages/builder/domain/models/pizza.entity.dart';
import 'package:patterns_examples_app/presentation/pages/builder/presentation/enums/enums.dart';

///Clase abstracta con lo minimo necesario para crear pizzas
abstract class PizzaBuilder {

  @protected
  late Pizza pizza; // Que va a crear
  @protected
  late String pizzaName;
  
  //+===== FUNCIONES DE NEGOCIO =====+\\
  
  /// Iniciar intancia para crear pizza
  void createPizza() {
    pizza = Pizza();
    pizza.setName(pizzaName);
  }
  Pizza getPizza() => pizza;
  void setPizzaPrice(double price) => pizza.setPrice(price);
  void setSize(PizzaSize size) => pizza.setSize(size);
  void addNotes(String notes) => pizza.addNotes(notes);
  

  //-===== CLASES POR IMPLEMENTAR EN LOS [BUILDERS] =====-\\
  void buildSauce();
  void buildToppings();
  void buildCrust();
}

/// Directorio de pizzas el cual coordinara la creación de diferentes tipos pizzas
class PizzaDirector {
  late PizzaBuilder _pizzaBuilder;

  void setPizzaBuilder(PizzaBuilder pb) {
    _pizzaBuilder = pb;
  }

  Pizza getPizza() {
    return _pizzaBuilder.getPizza();
  }

  void makePizza() {
    _pizzaBuilder.createPizza();
    _pizzaBuilder.buildCrust();
    _pizzaBuilder.buildSauce();
    _pizzaBuilder.buildToppings();
  }
}