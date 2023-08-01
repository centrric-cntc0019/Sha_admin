import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sha_admin/03_domain/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependancies() async =>
    getIt.init(environment: Environment.prod);
