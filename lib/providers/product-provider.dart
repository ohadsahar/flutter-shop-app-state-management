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
    ProductModel(
      id: '3',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '4',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '5',
      productName: 'Apple',
      productImage: 'assets/images/orange.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '6',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '7',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '8',
      productName: 'Apple',
      productImage: 'assets/images/orange.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '9',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '10',
      productName: 'Apple',
      productImage: 'assets/images/orange.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '11',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '12',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '13',
      productName: 'Apple',
      productImage: 'assets/images/orange.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '14',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '15',
      productName: 'Apple',
      productImage: 'assets/images/orange.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '16',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '17',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '18',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '19',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '20',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '21',
      productName: 'Apple',
      productImage: 'assets/images/orange.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '22',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '23',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '24',
      productName: 'Apple',
      productImage: 'assets/images/orange.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '25',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '26',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '27',
      productName: 'Apple',
      productImage: 'assets/images/orange.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '28',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '29',
      productName: 'Apple',
      productImage: 'assets/images/orange.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '30',
      productName: 'Apple',
      productImage: 'assets/images/orange.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '31',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '32',
      productName: 'Apple',
      productImage: 'assets/images/orange.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '33',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '34',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '35',
      productName: 'Apple',
      productImage: 'assets/images/orange.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '36',
      productName: 'Apple',
      productImage: 'assets/images/orange.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '37',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '38',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '39',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '40',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '41',
      productName: 'Apple',
      productImage: 'assets/images/apple.jpg',
      productPrice: 4,
    ),
    ProductModel(
      id: '42',
      productName: 'Apple',
      productImage: 'assets/images/banana.jpg',
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
