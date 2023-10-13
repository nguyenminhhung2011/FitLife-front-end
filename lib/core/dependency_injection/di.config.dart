// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../clean_architectures/domain/usecase/setting/setting_usecase.dart'
    as _i8;
import '../../mvvm/data/remote/auth/auth_api.dart' as _i11;
import '../../mvvm/repo/auth_repositories.dart' as _i3;
import '../../mvvm/repo/repo_impl/auth_repositories_impl.dart' as _i4;
import '../../mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart' as _i9;
import '../../mvvm/ui/splash/view_model/splash_view_model.dart' as _i10;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i12;
import '../services/cloundinary_service.dart' as _i5;
import '../services/image_pic_service.dart' as _i7;
import 'modules/data_source_module.dart' as _i13;

const String _prod = 'prod';

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dataSourceModule = _$DataSourceModule();
  gh.factory<_i3.AuthRepositories>(() => _i4.AuthRepositoriesImpl());
  gh.factory<_i5.CloundinaryService>(() => _i5.CloundinaryService());
  gh.factory<_i6.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i7.ImagePicService>(() => _i7.ImagePicService());
  gh.factory<_i8.SettingUseCase>(() => _i8.SettingUseCase());
  gh.factory<_i9.SignInViewModel>(() => _i9.SignInViewModel());
  gh.factory<_i10.SplashViewModel>(() => _i10.SplashViewModel());
  gh.factory<_i11.AuthApi>(() => _i11.AuthApi(gh<_i6.Dio>()));
  gh.factory<_i12.SettingBloc>(
      () => _i12.SettingBloc(gh<_i8.SettingUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i13.DataSourceModule {}
