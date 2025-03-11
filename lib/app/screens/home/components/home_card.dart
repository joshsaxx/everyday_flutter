import 'package:flutter/material.dart';
import 'package:flutter_tuts/models/products.dart';

class HomeCard extends StatelessWidget {
  final ProductModel? productModel;
  final VoidCallback? onTap;
  const HomeCard({super.key, this.productModel,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white, 
      borderRadius: BorderRadius.circular(16),
    child: ListTile(
      minLeadingWidth: 0,
      leading: const Icon(Icons.shopping_cart_checkout_outlined),
      trailing: Icon(Icons.arrow_forward_ios),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
      title: Text(productModel?.productName ?? ""),
      onTap: onTap,
      )
    );
  }
}