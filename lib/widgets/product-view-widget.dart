import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_management_app/models/cart.dart';
import 'package:shop_management_app/models/product-model.dart';
import 'package:shop_management_app/providers/product-provider.dart';

class ProductViewWidget extends StatelessWidget {
  const ProductViewWidget();

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductModel>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    final mediaQuery = MediaQuery.of(context);

    return ListTile(
      leading: Consumer<ProductModel>(
          builder: (ctx, product, child) => IconButton(
                icon: Icon(product.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border),
                onPressed: () {
                  product.favoriteFruit();
                  Provider.of<ProductsProvider>(context, listen: false)
                      .updateFruit(product);
                },
              )),
      trailing: IconButton(
        icon: Icon(Icons.shopping_cart),
        onPressed: () => {
          cart.addItem(
              product.id, product.productName, product.productPrice.toString())
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ClipRect(
            child: CircleAvatar(
              child: Image.asset(
                product.productImage,
                fit: BoxFit.cover,
                height: mediaQuery.size.height,
              ),
            ),
          ),
          Text(product.productName),
          Text(product.productPrice.toString()),
        ],
      ),
    );
  }
}
