import 'package:simple_commerce/cart_item.dart';

class Cart {
  final List<CartItem> _cartItems = <CartItem>[];

  void addToCart(CartItem cartItem) => _cartItems.add(cartItem);

  void removeFromCart(int cartItemId) =>
      _cartItems.removeWhere((cartItem) => cartItem.id == cartItemId);

  double cartTotal() {
    var totalPrice = 0.0;

    for (var item in _cartItems) {
      totalPrice += (item.amount * item.product.price);
    }

    return totalPrice;
  }

  List<CartItem> getCart() => _cartItems;
}
