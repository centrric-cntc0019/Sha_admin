// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sha_admin/02_application/auth/auth_bloc.dart' as _i9;
import 'package:sha_admin/02_application/category/category_bloc.dart' as _i10;
import 'package:sha_admin/03_domain/auth/i_auth_repo.dart' as _i5;
import 'package:sha_admin/03_domain/category/i_category_repo.dart' as _i7;
import 'package:sha_admin/04_infrastructure/auth/auth_repository.dart' as _i6;
import 'package:sha_admin/04_infrastructure/category/category_repository.dart'
    as _i8;
import 'package:sha_admin/05_core/services/dio_services.dart' as _i4;
import 'package:sha_admin/05_core/services/shared_pref.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.CacheHelper>(() => _i3.CacheHelper());
    gh.lazySingleton<_i4.DioServices>(() => _i4.DioServices());
    gh.lazySingleton<_i5.IAuthRepo>(() => _i6.AuthRepository());
    gh.lazySingleton<_i7.ICategoryRepo>(() => _i8.CategoryRepository());
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i5.IAuthRepo>()));
    gh.factory<_i10.CategoryBloc>(
        () => _i10.CategoryBloc(gh<_i7.ICategoryRepo>()));
    return this;
  }
}
