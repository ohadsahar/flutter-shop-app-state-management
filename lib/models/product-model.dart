import 'package:flutter/cupertino.dart';

class ProductModel extends ChangeNotifier {
  final String id;
  final String productName;
  final String productImage;
  final double productPrice;
  bool isFavorite;

  ProductModel(
      {@required this.id,
      @required this.productName,
      @required this.productPrice,
      @required this.productImage,
      this.isFavorite = false});

  favoriteFruit() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
