// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../clean_architectures/domain/usecase/setting/setting_usecase.dart'
    as _i27;
import '../../mvvm/data/remote/auth/auth_api.dart' as _i33;
import '../../mvvm/data/remote/plan/plan_api.dart' as _i21;
import '../../mvvm/repo/auth_repositories.dart' as _i4;
import '../../mvvm/repo/calories_repositories.dart' as _i7;
import '../../mvvm/repo/exercise_repositories.dart' as _i14;
import '../../mvvm/repo/plan_repositories.dart' as _i23;
import '../../mvvm/repo/repo_impl/auth_repositories_impl.dart' as _i5;
import '../../mvvm/repo/repo_impl/calories_repositories_impl.dart' as _i8;
import '../../mvvm/repo/repo_impl/exercise_repositories_impl.dart' as _i15;
import '../../mvvm/repo/repo_impl/plan_repositories_impl.dart' as _i24;
import '../../mvvm/repo/repo_impl/session_repositories_impl.dart' as _i26;
import '../../mvvm/repo/session_repositories.dart' as _i25;
import '../../mvvm/ui/all_exercise/view_model/all_exercise_view_model.dart'
    as _i3;
import '../../mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart' as _i28;
import '../../mvvm/ui/auth/view_model/sign_up/sign_up_view_model.dart' as _i29;
import '../../mvvm/ui/calendar/view_model/calendar_view_model.dart' as _i6;
import '../../mvvm/ui/chat_bot/view_model/chat_bot_view_model.dart' as _i9;
import '../../mvvm/ui/dashboard/view_model/dashboard_view_model.dart' as _i11;
import '../../mvvm/ui/execise_detail/view_model/exercise_detail_view_model.dart'
    as _i13;
import '../../mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart'
    as _i16;
import '../../mvvm/ui/notification/view_model/notification_view_model.dart'
    as _i19;
import '../../mvvm/ui/overview/view_model/overview_view_model.dart' as _i20;
import '../../mvvm/ui/plan_overview/view_model/plan_overview_view_model.dart'
    as _i22;
import '../../mvvm/ui/plan_overview/view_model/view_more/view_more_plan_view_model.dart'
    as _i31;
import '../../mvvm/ui/recommend_plan/view_model/group_exercise_view_model.dart'
    as _i17;
import '../../mvvm/ui/splash/view_model/splash_view_model.dart' as _i30;
import '../../mvvm/ui/wo_trac/view_model/wo_trac_view_model.dart' as _i32;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i34;
import '../services/cloundinary_service.dart' as _i10;
import '../services/image_pic_service.dart' as _i18;
import 'modules/data_source_module.dart' as _i35;

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
  gh.factoryParam<_i3.AllExerciseViewModel, String, dynamic>((
    categoryId,
    _,
  ) =>
      _i3.AllExerciseViewModel(categoryId: categoryId));
  gh.factory<_i4.AuthRepositories>(() => _i5.AuthRepositoriesImpl());
  gh.factory<_i6.CalendarViewModel>(() => _i6.CalendarViewModel());
  gh.factory<_i7.CaloriesRepositories>(() => _i8.CaloriesRepositoriesImpl());
  gh.factory<_i9.ChatBotViewModel>(() => _i9.ChatBotViewModel());
  gh.factory<_i10.CloundinaryService>(() => _i10.CloundinaryService());
  gh.factory<_i11.DashboardViewModel>(() => _i11.DashboardViewModel(gh<int>()));
  gh.factory<_i12.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i13.ExerciseDetailViewModel>(
      () => _i13.ExerciseDetailViewModel());
  gh.factory<_i14.ExerciseRepositories>(() => _i15.ExerciseRepositoriesImpl());
  gh.factory<_i16.FitOverViewViewModel>(() => _i16.FitOverViewViewModel());
  gh.factory<_i17.GroupExerciseViewModel>(() => _i17.GroupExerciseViewModel());
  gh.factory<_i18.ImagePicService>(() => _i18.ImagePicService());
  gh.factory<_i19.NotificationViewModel>(
      () => _i19.NotificationViewModel(gh<_i19.NotificationState>()));
  gh.factory<_i20.OverviewViewModel>(() => _i20.OverviewViewModel());
  gh.factory<_i21.PlanApi>(() => _i21.PlanApi(gh<_i12.Dio>()));
  gh.factory<_i22.PlanOverViewViewModel>(() => _i22.PlanOverViewViewModel());
  gh.factory<_i23.PlanRepositories>(
      () => _i24.PlanRepositoriesImpl(gh<_i21.PlanApi>()));
  gh.factory<_i25.SessionRepositories>(() => _i26.SessionRepositoriesImpl());
  gh.factory<_i27.SettingUseCase>(() => _i27.SettingUseCase());
  gh.factory<_i28.SignInViewModel>(() => _i28.SignInViewModel());
  gh.factory<_i29.SignUpViewModel>(() => _i29.SignUpViewModel());
  gh.factory<_i30.SplashViewModel>(() => _i30.SplashViewModel());
  gh.factory<_i31.ViewMorePlanViewModel>(() => _i31.ViewMorePlanViewModel());
  gh.factory<_i32.WooTrackViewModel>(() => _i32.WooTrackViewModel());
  gh.factory<_i33.AuthApi>(() => _i33.AuthApi(gh<_i12.Dio>()));
  gh.factory<_i34.SettingBloc>(
      () => _i34.SettingBloc(gh<_i27.SettingUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i35.DataSourceModule {}
