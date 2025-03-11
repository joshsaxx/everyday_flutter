import 'package:flutter/material.dart';
import 'package:flutter_tuts/models/products.dart';

class DetailsScreen extends StatelessWidget {
  final ProductModel? productModel;
  const DetailsScreen({super.key, this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Product ID: ${productModel?.productId}"),
            const SizedBox(height: 20),
            Text("Product Name: ${productModel?.productName}")
          ],
        ),
      ),
    );
  }
}