import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    @required this.productName,
    Key key,
  }) : super(key: key);

  final String productName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Added to cart: $productName"),
        ),
      ),
    );
  }
}
