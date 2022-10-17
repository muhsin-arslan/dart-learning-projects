import 'dart:io';

import 'package:simple_commerce/cart.dart';
import 'package:simple_commerce/cart_item.dart';
import 'package:simple_commerce/product.dart';

var productsOfShop = <Product>[
  Product(id: 1, name: 'Apple', price: 3.5),
  Product(id: 2, name: 'Orange', price: 2.75),
  Product(id: 3, name: 'Pineapple', price: 2.25),
  Product(id: 4, name: 'Berry', price: 2.25),
  Product(id: 5, name: 'Onion', price: 2.0),
];

var myCart = Cart();

void main(List<String> arguments) {
  showMenu();
  var isCheckoutCompleted = false;

  do {
    var selection = stdin.readLineSync();
    switch (selection) {
      case 'v':
        showProducs();
        showMenu();
        break;
      case 'a':
        print('Product Id:');
        var productId = int.parse(stdin.readLineSync() as String);

        print('Amount (kg):');
        var amount = int.parse(stdin.readLineSync() as String);

        addProduct(productId, amount);
        showMenu();
        break;
      case 'c':
        showCheckout();
        print('Do you want to complete your checkout? (Y)es or (N)o');
        var checkOutSelection = stdin.readLineSync() as String;
        var isCheckOutDone = getCheckoutStatus(checkOutSelection);

        switch (isCheckOutDone) {
          case true:
            print('Purchase done.');
            isCheckoutCompleted = true;
            break;
          default:
            showMenu();
            break;
        }
        break;
      case 'q':
        exit(0);
      default:
        showMenu();
        break;
    }
  } while (!isCheckoutCompleted);
}

void showMenu() =>
    print('What do you want to do? (v)iew items, (a)dd item, (c)heckout:');

void showProducs() {
  for (var product in productsOfShop) {
    print('${product.name} is ${product.price}USD (Id:${product.id})');
  }
}

void addProduct(int productId, int amount) {
  var cartItemId = myCart.getCart().length + 1;

  var product =
      productsOfShop.where((product) => product.id == productId).first;

  myCart.addToCart(CartItem(id: cartItemId, amount: amount, product: product));
}

void showCheckout() {
  var cartItems = myCart.getCart();
  for (var cartItem in cartItems) {
    var productPrice = cartItem.product.price * cartItem.amount;

    print(
        '${cartItem.product.name} (${cartItem.amount}kg) - ${productPrice}USD');
  }

  var total = myCart.cartTotal();
  print('Total: ${total}USD');
}

bool getCheckoutStatus(String selection) => selection.toLowerCase() == 'y';
