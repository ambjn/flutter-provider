import 'package:flutter/material.dart';

class ShoppingCart with ChangeNotifier {
  List<String> _shoppingCart = ['Apple', 'Banana', 'Mango'];
  int get count => _shoppingCart.length;

  List<String> get cart => _shoppingCart;
}
