import 'package:patterns_examples_app/presentation/pages/builder/domain/classes/pizza_builder.dart';
import 'package:patterns_examples_app/presentation/pages/builder/presentation/enums/enums.dart';


class NewYorkPizzaBuilder extends PizzaBuilder {
  static const String thisPizzaName = "New York Style";

  NewYorkPizzaBuilder() {
    super.pizzaName = thisPizzaName;
  }

  @override
  void buildCrust() {
    pizza.setCrust(PizzaCrust.newYork);
  }

  @override
  void buildSauce() {
    pizza.setSauce(PizzaSauce.tomato);
  }

  @override
  void buildToppings() {
    pizza.addTopping("mozzarella cheese");
    pizza.addTopping("pepperoni");
  }
}