// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../clean_architectures/domain/usecase/setting/setting_usecase.dart'
    as _i26;
import '../../mvvm/data/remote/auth/auth_api.dart' as _i32;
import '../../mvvm/data/remote/plan/plan_api.dart' as _i20;
import '../../mvvm/repo/auth_repositories.dart' as _i3;
import '../../mvvm/repo/calories_repositories.dart' as _i6;
import '../../mvvm/repo/exercise_repositories.dart' as _i13;
import '../../mvvm/repo/plan_repositories.dart' as _i22;
import '../../mvvm/repo/repo_impl/auth_repositories_impl.dart' as _i4;
import '../../mvvm/repo/repo_impl/calories_repositories_impl.dart' as _i7;
import '../../mvvm/repo/repo_impl/exercise_repositories_impl.dart' as _i14;
import '../../mvvm/repo/repo_impl/plan_repositories_impl.dart' as _i23;
import '../../mvvm/repo/repo_impl/session_repositories_impl.dart' as _i25;
import '../../mvvm/repo/session_repositories.dart' as _i24;
import '../../mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart' as _i27;
import '../../mvvm/ui/auth/view_model/sign_up/sign_up_view_model.dart' as _i28;
import '../../mvvm/ui/calendar/view_model/calendar_view_model.dart' as _i5;
import '../../mvvm/ui/chat_bot/view_model/chat_bot_view_model.dart' as _i8;
import '../../mvvm/ui/dashboard/view_model/dashboard_view_model.dart' as _i10;
import '../../mvvm/ui/execise_detail/view_model/exercise_detail_view_model.dart'
    as _i12;
import '../../mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart'
    as _i15;
import '../../mvvm/ui/notification/view_model/notification_view_model.dart'
    as _i18;
import '../../mvvm/ui/overview/view_model/overview_view_model.dart' as _i19;
import '../../mvvm/ui/plan_overview/view_model/plan_overview_view_model.dart'
    as _i21;
import '../../mvvm/ui/plan_overview/view_model/view_more/view_more_plan_view_model.dart'
    as _i30;
import '../../mvvm/ui/recommend_plan/view_model/group_exercise_view_model.dart'
    as _i16;
import '../../mvvm/ui/splash/view_model/splash_view_model.dart' as _i29;
import '../../mvvm/ui/wo_trac/view_model/wo_trac_view_model.dart' as _i31;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i33;
import '../services/cloundinary_service.dart' as _i9;
import '../services/image_pic_service.dart' as _i17;
import 'modules/data_source_module.dart' as _i34;

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
  gh.factory<_i5.CalendarViewModel>(() => _i5.CalendarViewModel());
  gh.factory<_i6.CaloriesRepositories>(() => _i7.CaloriesRepositoriesImpl());
  gh.factory<_i8.ChatBotViewModel>(() => _i8.ChatBotViewModel());
  gh.factory<_i9.CloundinaryService>(() => _i9.CloundinaryService());
  gh.factory<_i10.DashboardViewModel>(() => _i10.DashboardViewModel(gh<int>()));
  gh.factory<_i11.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i12.ExerciseDetailViewModel>(
      () => _i12.ExerciseDetailViewModel());
  gh.factory<_i13.ExerciseRepositories>(() => _i14.ExerciseRepositoriesImpl());
  gh.factory<_i15.FitOverViewViewModel>(() => _i15.FitOverViewViewModel());
  gh.factory<_i16.GroupExerciseViewModel>(() => _i16.GroupExerciseViewModel());
  gh.factory<_i17.ImagePicService>(() => _i17.ImagePicService());
  gh.factory<_i18.NotificationViewModel>(
      () => _i18.NotificationViewModel(gh<_i18.NotificationState>()));
  gh.factory<_i19.OverviewViewModel>(() => _i19.OverviewViewModel());
  gh.factory<_i20.PlanApi>(() => _i20.PlanApi(gh<_i11.Dio>()));
  gh.factory<_i21.PlanOverViewViewModel>(() => _i21.PlanOverViewViewModel());
  gh.factory<_i22.PlanRepositories>(
      () => _i23.PlanRepositoriesImpl(gh<_i20.PlanApi>()));
  gh.factory<_i24.SessionRepositories>(() => _i25.SessionRepositoriesImpl());
  gh.factory<_i26.SettingUseCase>(() => _i26.SettingUseCase());
  gh.factory<_i27.SignInViewModel>(() => _i27.SignInViewModel());
  gh.factory<_i28.SignUpViewModel>(() => _i28.SignUpViewModel());
  gh.factory<_i29.SplashViewModel>(() => _i29.SplashViewModel());
  gh.factory<_i30.ViewMorePlanViewModel>(() => _i30.ViewMorePlanViewModel());
  gh.factory<_i31.WooTrackViewModel>(() => _i31.WooTrackViewModel());
  gh.factory<_i32.AuthApi>(() => _i32.AuthApi(gh<_i11.Dio>()));
  gh.factory<_i33.SettingBloc>(
      () => _i33.SettingBloc(gh<_i26.SettingUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i34.DataSourceModule {}
