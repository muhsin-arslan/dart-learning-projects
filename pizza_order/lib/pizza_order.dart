const pizzaPrices = {
  'margherita': 5.5,
  'pepperoni': 7.5,
  'vegetarian': 6.5,
};

double createOrder(List<String> order) {
  if (order.isEmpty) return 0.0;

  var orderTotal = 0.0;

  for (var pizza in order) {
    var isPizzaExists = pizzaPrices.containsKey(pizza);

    if (!isPizzaExists) {
      print("$pizza is not on the menu.");
      continue;
    }

    var pizzaPrice = pizzaPrices[pizza] as double;
    orderTotal += pizzaPrice;
  }

  return orderTotal;
}
