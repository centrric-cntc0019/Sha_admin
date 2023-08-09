import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '05_core/route/router.dart';
import '05_core/utils/themes.dart';
import '03_domain/di/injection.dart';
import '05_core/services/shared_pref.dart';
import '02_application/auth/auth_bloc.dart';
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
            lazy: false,
            create: (ctx) =>
                getIt<AuthBloc>()..add(const AuthEvent.authenticate()),
          ),
          BlocProvider(create: (ctx) => getIt<CategoryBloc>()),
          BlocProvider(create: (ctx) => getIt<ProductBloc>()),
          // BlocProvider(create: (ctx) => getIt<ProfileBloc>()),
          // BlocProvider(create: (ctx) => getIt<QuotesBloc>()),
        ],
        child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: false,
          builder: (BuildContext context, Widget? child) {
            return MaterialApp.router(
              routerConfig: router,
              debugShowCheckedModeBanner: false,
              theme: AppTheme.themeData,
              title: 'Shah Admin',
            );
          },
        ));
  }
}
