import 'package:flutter/cupertino.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final String price;

  CartItem(
      {@required this.id,
      @required this.title,
      @required this.quantity,
      @required this.price});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {...items};
  }

  int get itemCount {
    return _items == null ? 0 : _items.length;
  }

  void addItem(String productId, String productTitle, String price) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (existCartItem) => CartItem(
              id: existCartItem.id,
              title: existCartItem.title,
              price: existCartItem.price,
              quantity: existCartItem.quantity  + 1));
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
              id: DateTime.now().toString(),
              title: productTitle,
              price: price,
              quantity: 1));
    }

    notifyListeners();
  }
}
