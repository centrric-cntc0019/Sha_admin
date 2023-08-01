import 'package:flutter/material.dart';
import 'package:sha_admin/05_core/route/route_name.dart';

import '../../01_presentation/main/main_screen.dart';
import '../../01_presentation/auth/login_screen.dart';
import '../../01_presentation/product/product_list_screen.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case RouteNames.homePage:
        return MaterialPageRoute(
          builder: (context) => const MainScreen(),
        );
      case RouteNames.productListScreen:
        return MaterialPageRoute(
          builder: (context) => ProductListScreen(
            headText: settings.arguments as Map,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
    }
  }
}
