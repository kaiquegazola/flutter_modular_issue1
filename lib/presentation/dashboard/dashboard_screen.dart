import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Text('Products'),
              ),
              ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed(
                    '/product-detail',
                    arguments: {
                      'productName': 'Pendrive',
                    },
                  );
                },
                child: Text('Product 1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
