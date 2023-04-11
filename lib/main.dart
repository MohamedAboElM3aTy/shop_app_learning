import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/product_detail_screen.dart';
import './screens/product_overview_screen.dart';
import './providers/products_provider.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData(
    fontFamily: 'Lato',
    primarySwatch: Colors.purple,
  );
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(), 
      // ! This is the provider , I make a provider to this instance of the class Products
      child: MaterialApp(
        title: 'MyShop',
        theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            secondary: Colors.deepOrange,
          ),
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
