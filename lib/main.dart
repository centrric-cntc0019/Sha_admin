import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '05_core/route/router.dart';
import '05_core/utils/themes.dart';
import '03_domain/di/injection.dart';
import '05_core/services/shared_pref.dart';
import '02_application/auth/auth_bloc.dart';
import '01_presentation/main/main_screen.dart';
import '01_presentation/auth/login_screen.dart';
import '02_application/product/product_bloc.dart';
import '02_application/category/category_bloc.dart';

//   F L U T T E R  S D K = 3.10.5

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await dotenv.load(fileName: 'assets/.env');
  await configureDependancies();
  await getIt<CacheHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) =>
              getIt<AuthBloc>()..add(const AuthEvent.authenticate()),
        ),
        BlocProvider(create: (ctx) => getIt<CategoryBloc>()),
        BlocProvider(create: (ctx) => getIt<ProductBloc>()),
        // BlocProvider(create: (ctx) => getIt<ProfileBloc>()),
        // BlocProvider(create: (ctx) => getIt<QuotesBloc>()),
      ],
      child: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (previous, current) =>
            previous.isAuthenticated != current.isAuthenticated,
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: false,
            builder: (BuildContext context, Widget? child) {
              if (state.isAuthenticated != null) {
                return MaterialApp(
                  title: 'Shah Admin',
                  theme: AppTheme.themeData,
                  debugShowCheckedModeBanner: false,
                  home: state.isAuthenticated!
                      ? const MainScreen()
                      : const LoginScreen(),
                  onGenerateRoute: AppRouter.generateRoute,
                );
              }
              return Container(
                color: Colors.white,
                child: const Center(child: CupertinoActivityIndicator()),
              );
            },
          );
        },
      ),
    );
  }
}
