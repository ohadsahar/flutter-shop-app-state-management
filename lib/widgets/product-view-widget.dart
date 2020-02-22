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
    return GridTile(
        child: Image.asset(product.productImage),
        footer: GridTileBar(
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
              cart.addItem(product.id, product.productName,
                  product.productPrice.toString())
            },
          ),
          backgroundColor: Colors.black54,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(product.productName),
              Text(product.productPrice.toString()),
            ],
          ),
        ));
  }
}
