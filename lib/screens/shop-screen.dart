import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_management_app/models/cart.dart';
import 'package:shop_management_app/providers/product-provider.dart';
import 'package:shop_management_app/widgets/badge.dart';
import 'package:shop_management_app/widgets/product-view-widget.dart';

class ShopScreen extends StatefulWidget {
  @override
  ShopScreenState createState() => ShopScreenState();
}

class ShopScreenState extends State<ShopScreen> {
  var showFavoriteFruits = false;

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = showFavoriteFruits
        ? productsData.favoriteProducts
        : productsData.products;
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () => {
              setState(() {
                showFavoriteFruits = !showFavoriteFruits;
              })
            },
          ),
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              child: ch,
              value: cart.itemCount.toString(),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => {},
            ),
          )
        ],
      ),
      body: GridView.builder(
        itemCount: products.length,
        itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: products[i],
          child: ProductViewWidget(),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.5, crossAxisSpacing: 3),
      ),
    );
  }
}
