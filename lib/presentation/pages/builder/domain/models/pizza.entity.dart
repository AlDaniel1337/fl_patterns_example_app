import 'package:patterns_examples_app/presentation/pages/builder/presentation/enums/enums.dart';

/// Representación de una pizza
class Pizza {
  late final PizzaSize _size;
  late final PizzaCrust _crust;
  late final PizzaSauce _sauce;
  final List<String> _toppings = [];
  late final String _notes;
  late final double _price;
  late final String _name;

  /// getters
  PizzaSize get size => _size;
  PizzaCrust get crust => _crust;
  PizzaSauce get sauce => _sauce;
  String get toppings => _stringifiedToppings();
  String get notes => _notes;
  double get price => _price;

  /// Fundiones
  void addTopping(String topping) =>  _toppings.add(topping);
  void setPrice(double price) =>  _price = price;
  void setName(String name) => _name = name;
  void setSize(PizzaSize size) => _size = size;
  void setCrust(PizzaCrust crust) => _crust = crust;
  void setSauce(PizzaSauce sauce) => _sauce = sauce;
  void addNotes(String notes) => _notes = notes;
  

  /// Formato para los toppings
  String _stringifiedToppings() {
    var stringToppings = _toppings.join(", ");
    var lastComma = stringToppings.lastIndexOf(",");
    var replacement =",".allMatches(stringToppings).length > 1 ? ", and" : " and";

    return stringToppings.replaceRange(lastComma, lastComma + 1, replacement);
  }

  @override
  String toString() {
    return "A delicious $_name pizza with ${_crust.toString().split(".")[1]} crust covered in ${_stringifiedToppings()}";
  }
}