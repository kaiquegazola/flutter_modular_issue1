import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({
    @required this.productName,
    Key key,
  }) : super(key: key);

  final String productName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text('Product'),
              Text(productName),
              ElevatedButton.icon(
                onPressed: () {
                  Modular.to.pushNamed(
                    '/cart',
                    arguments: {
                      'addToCart': 'Pendrive',
                    },
                  );
                },
                icon: Icon(Icons.add_shopping_cart),
                label: Text('Add to cart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
