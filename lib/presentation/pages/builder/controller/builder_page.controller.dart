import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_examples_app/presentation/pages/builder/domain/classes/hawaiian_pizza_.builder.dart';
import 'package:patterns_examples_app/presentation/pages/builder/domain/classes/newyork_pizza.builder.dart';
import 'package:patterns_examples_app/presentation/pages/builder/domain/classes/pizza_builder.dart';
import 'package:patterns_examples_app/presentation/pages/builder/domain/models/pizza.entity.dart';

/// BuilderPageController _builderPageController = Get.put(BuilderPageController());

class BuilderPageController extends GetxController{

  var counter = 0.obs;
  var pizzaName = ''.obs;

  /// Director
  PizzaDirector director = PizzaDirector();

  /// Builders
  PizzaBuilder hawaiianPizzabuilder = HawaiianPizzaBuilder();
  PizzaBuilder newYorkPizzaBuilder = NewYorkPizzaBuilder();

  void buildPizza() {
      counter.value += 1;

      if (counter.value % 2 == 0) {
        _buildHawaiinPizza();
      } else {
        _buildNewYorkPizza();
      }
  }

  void _buildHawaiinPizza(){
    director.setPizzaBuilder(hawaiianPizzabuilder);
    director.makePizza();
    Pizza myPizza = director.getPizza();
    debugPrint(myPizza.toString());
    pizzaName.value = myPizza.toString();
  }

  void _buildNewYorkPizza(){
    director.setPizzaBuilder(newYorkPizzaBuilder);
    director.makePizza();
    Pizza myPizza = director.getPizza();
    debugPrint(myPizza.toString());
    pizzaName.value = myPizza.toString();
  }
}

