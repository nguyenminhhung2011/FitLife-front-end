// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../clean_architectures/domain/usecase/setting/setting_usecase.dart'
    as _i13;
import '../../mvvm/data/remote/auth/auth_api.dart' as _i16;
import '../../mvvm/repo/auth_repositories.dart' as _i3;
import '../../mvvm/repo/repo_impl/auth_repositories_impl.dart' as _i4;
import '../../mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart' as _i14;
import '../../mvvm/ui/chat_bot/view_model/chat_bot_view_model.dart' as _i5;
import '../../mvvm/ui/dashboard/view_model/dashboard_view_model.dart' as _i7;
import '../../mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart'
    as _i9;
import '../../mvvm/ui/overview/view_model/overview_view_model.dart' as _i11;
import '../../mvvm/ui/plan_overview/view_model/plan_overview_view_model.dart'
    as _i12;
import '../../mvvm/ui/splash/view_model/splash_view_model.dart' as _i15;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i17;
import '../services/cloundinary_service.dart' as _i6;
import '../services/image_pic_service.dart' as _i10;
import 'modules/data_source_module.dart' as _i18;

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
  gh.factory<_i5.ChatBotViewModel>(() => _i5.ChatBotViewModel());
  gh.factory<_i6.CloundinaryService>(() => _i6.CloundinaryService());
  gh.factory<_i7.DashboardViewModel>(() => _i7.DashboardViewModel(gh<int>()));
  gh.factory<_i8.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i9.FitOverViewViewModel>(() => _i9.FitOverViewViewModel());
  gh.factory<_i10.ImagePicService>(() => _i10.ImagePicService());
  gh.factory<_i11.OverviewViewModel>(() => _i11.OverviewViewModel());
  gh.factory<_i12.PlanOverViewViewModel>(() => _i12.PlanOverViewViewModel());
  gh.factory<_i13.SettingUseCase>(() => _i13.SettingUseCase());
  gh.factory<_i14.SignInViewModel>(() => _i14.SignInViewModel());
  gh.factory<_i15.SplashViewModel>(() => _i15.SplashViewModel());
  gh.factory<_i16.AuthApi>(() => _i16.AuthApi(gh<_i8.Dio>()));
  gh.factory<_i17.SettingBloc>(
      () => _i17.SettingBloc(gh<_i13.SettingUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i18.DataSourceModule {}
