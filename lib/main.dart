import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_management_app/models/cart.dart';
import 'package:shop_management_app/providers/product-provider.dart';
import 'package:shop_management_app/screens/shop-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ProductsProvider()),
        ChangeNotifierProvider.value(value: Cart())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'פירות וירקות רק היום',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ShopScreen(),
      ),
    );
  }
}
