import 'package:pizza_order/pizza_order.dart';

void main(List<String> arguments) {
  const order = ['margherita', 'pepperoni', 'pineapple'];

  var orderTotal = createOrder(order);
  print('Total: \$$orderTotal');
}
