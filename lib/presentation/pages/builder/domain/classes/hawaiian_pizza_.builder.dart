import 'package:patterns_examples_app/presentation/pages/builder/domain/classes/pizza_builder.dart';
import 'package:patterns_examples_app/presentation/pages/builder/presentation/enums/enums.dart';

class HawaiianPizzaBuilder extends PizzaBuilder {

  static const String thisPizzaName = "Hawaiian Style";

  HawaiianPizzaBuilder() {
    super.pizzaName = thisPizzaName;
  }

  @override
  void buildCrust() {
    pizza.setCrust(PizzaCrust.classic);
  }

  @override
  void buildSauce() {
    pizza.setSauce(PizzaSauce.mild);
  }

  @override
  void buildToppings() {
    pizza.addTopping("ham");
    pizza.addTopping("pinnaple");
  }
}