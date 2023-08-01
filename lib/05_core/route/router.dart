import 'package:flutter/material.dart';
import 'package:sha_admin/05_core/route/route_name.dart';

import '../../01_presentation/auth/login_screen.dart';
import '../../01_presentation/auth/otp_screen.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      case RouteNames.otpPage:
        return MaterialPageRoute(
          builder: (context) => const OtpScreen(),
        );
      // case RouteNames.profile:
      //   return MaterialPageRoute(
      //     builder: (context) => const Profile(),
      //   );
      // case RouteNames.homePage:
      //   return MaterialPageRoute(
      //     builder: (context) => MainScreen(),
      //   );
      // case RouteNames.editProfile:
      //   return MaterialPageRoute(
      //     builder: (context) => EditProfile(),
      //   );
      // case RouteNames.productListScreen:
      //   Map args = settings.arguments as Map;

      //   return MaterialPageRoute(
      //     builder: (context) => ProductListScreen(
      //       headText: args,
      //     ),
      //   );
      // case RouteNames.productDetailScreen:
      //   Map? args = settings.arguments as Map;
      //   return MaterialPageRoute(
      //     builder: (context) => ProductDetailScreen(
      //       productIndex: args['index_of_product'],
      //     ),
      //   );
      // case RouteNames.quotationDetailScreen:
      //   Map? args = settings.arguments as Map;

      //   return MaterialPageRoute(
      //     builder: (context) => QuotationDetailScreen(
      //       uuid: args['uuid'],
      //     ),
      //   );
      default:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
    }
  }
}
