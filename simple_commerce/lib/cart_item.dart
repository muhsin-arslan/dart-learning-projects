import 'package:simple_commerce/product.dart';

class CartItem {
  final int id;
  final int amount;
  final Product product;

  CartItem({
    required this.id,
    required this.amount,
    required this.product,
  });
}
