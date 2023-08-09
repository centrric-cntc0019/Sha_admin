import 'package:sha_admin/05_core/route/route_name.dart';
import 'package:sha_admin/05_core/utils/custom_print.dart';
import '../../01_presentation/main/main_screen.dart';
import '../../01_presentation/auth/login_screen.dart';
import '../../01_presentation/product/product_list_screen.dart';
import 'package:go_router/go_router.dart';
import '../../03_domain/di/injection.dart';
import '../services/shared_pref.dart';

final router = GoRouter(
  initialLocation: '/home',
  errorBuilder: (context, state) => const LoginScreen(),
  routes: [
    GoRoute(
      path: RouteNames.loginPage,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: RouteNames.homePage,
      redirect: (context, state) async {
        final String? auth =
            await getIt<CacheHelper>().getCachedData(key: "access_token");
        if (auth == null) {
          return RouteNames.loginPage;
        } else {
          return null; // return "null" to display the intended route without redirecting
        }
      },
      builder: (context, state) => const MainScreen(),
      routes: [
        GoRoute(
            name: 'product_list',
            path: RouteNames.productListScreen,
            builder: (context, state) {
              customPrint(state.extra);
              return ProductListScreen(headText: state.extra as Map);
            })
      ],
    ),
  ],
);

// class AppRouter {
// // GoRouter configuration
 
// }
