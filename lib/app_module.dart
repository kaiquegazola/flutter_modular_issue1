import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/cart/cart_screen.dart';
import 'presentation/dashboard/dashboard_screen.dart';
import 'presentation/product/product_detail_screen.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/dashboard',
      child: (_, __) {
        print('Navigating to /dashboard');
        return DashboardScreen();
      },
    ),
    ChildRoute(
      '/product-detail',
      child: (_, args) {
        print('Navigating to /product-detail');
        print('Has productName? ${args.data.containsKey('productName')}');
        print('Args is: ${args.data}');
        return ProductDetailScreen(
          productName: args.data['productName'],
        );
      },
    ),
    ChildRoute(
      '/cart',
      child: (_, args) {
        print('Navigating to /cart');
        print('Has productName? ${args.data.containsKey('addToCart')}');
        print('Args is: ${args.data}');
        return CartScreen(
          productName: args.data['addToCart'],
        );
      },
    ),
  ];
}
