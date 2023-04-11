import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app_learning/providers/products_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments;
    final productId = args as String;
    final loadedProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);
    return Scaffold(
        appBar: AppBar(
      title: Text(
        loadedProduct.title,
      ),
    ));
  }
}
