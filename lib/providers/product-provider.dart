import 'package:flutter/material.dart';
import 'package:shop_management_app/models/product-model.dart';

class ProductsProvider extends ChangeNotifier {
  List<ProductModel> _products = [
    ProductModel(
      id: '1',
      productName: 'Banana',
      productImage: 'assets/images/banana.jpg',
      productPrice: 5,
    ),
    ProductModel(
      id: '2',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
  ];

  List<ProductModel> get products {
    return [..._products];
  }

  List<ProductModel> get favoriteProducts {
    return _products.where((prodItem) => prodItem.isFavorite).toList();
  }

  void updateFruit(product) {}

  void addFruit(product) {}
}
