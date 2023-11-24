// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../clean_architectures/domain/usecase/setting/setting_usecase.dart'
    as _i30;
import '../../mvvm/data/remote/auth/auth_api.dart' as _i38;
import '../../mvvm/data/remote/plan/plan_api.dart' as _i23;
import '../../mvvm/repo/auth_repositories.dart' as _i4;
import '../../mvvm/repo/calories_repositories.dart' as _i7;
import '../../mvvm/repo/chat_repositories.dart' as _i10;
import '../../mvvm/repo/exercise_repositories.dart' as _i16;
import '../../mvvm/repo/plan_repositories.dart' as _i26;
import '../../mvvm/repo/repo_impl/auth_repositories_impl.dart' as _i5;
import '../../mvvm/repo/repo_impl/calories_repositories_impl.dart' as _i8;
import '../../mvvm/repo/repo_impl/chat_repositories_impl.dart' as _i11;
import '../../mvvm/repo/repo_impl/exercise_repositories_impl.dart' as _i17;
import '../../mvvm/repo/repo_impl/plan_repositories_impl.dart' as _i27;
import '../../mvvm/repo/repo_impl/session_repositories_impl.dart' as _i29;
import '../../mvvm/repo/session_repositories.dart' as _i28;
import '../../mvvm/ui/all_exercise/view_model/all_exercise_view_model.dart'
    as _i3;
import '../../mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart' as _i31;
import '../../mvvm/ui/auth/view_model/sign_up/sign_up_view_model.dart' as _i32;
import '../../mvvm/ui/calendar/view_model/calendar_view_model.dart' as _i6;
import '../../mvvm/ui/chat_bot/view_model/chat_bot_view_model.dart' as _i9;
import '../../mvvm/ui/dashboard/view_model/dashboard_view_model.dart' as _i13;
import '../../mvvm/ui/execise_detail/view_model/exercise_detail_view_model.dart'
    as _i15;
import '../../mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart'
    as _i18;
import '../../mvvm/ui/notification/view_model/notification_view_model.dart'
    as _i21;
import '../../mvvm/ui/overview/view_model/overview_view_model.dart' as _i22;
import '../../mvvm/ui/plan_detail/view_model/plan_detail_view_model.dart'
    as _i24;
import '../../mvvm/ui/plan_overview/view_model/plan_overview_view_model.dart'
    as _i25;
import '../../mvvm/ui/plan_overview/view_model/view_more/view_more_plan_view_model.dart'
    as _i36;
import '../../mvvm/ui/recommend_plan/view_model/group_exercise_view_model.dart'
    as _i19;
import '../../mvvm/ui/splash/view_model/splash_view_model.dart' as _i34;
import '../../mvvm/ui/wo_trac/view_model/wo_trac_view_model.dart' as _i37;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i39;
import '../services/cloundinary_service.dart' as _i12;
import '../services/image_pic_service.dart' as _i20;
import '../services/speach_text_service.dart' as _i33;
import '../services/text_speech_service.dart' as _i35;
import 'modules/data_source_module.dart' as _i40;

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
  gh.factory<_i10.ChatRepositories>(() => _i11.ChatRepositoriesImpl());
  gh.factory<_i12.CloundinaryService>(() => _i12.CloundinaryService());
  gh.factory<_i13.DashboardViewModel>(() => _i13.DashboardViewModel(gh<int>()));
  gh.factory<_i14.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i15.ExerciseDetailViewModel>(
      () => _i15.ExerciseDetailViewModel());
  gh.factory<_i16.ExerciseRepositories>(() => _i17.ExerciseRepositoriesImpl());
  gh.factory<_i18.FitOverViewViewModel>(() => _i18.FitOverViewViewModel());
  gh.factory<_i19.GroupExerciseViewModel>(() => _i19.GroupExerciseViewModel());
  gh.factory<_i20.ImagePicService>(() => _i20.ImagePicService());
  gh.factory<_i21.NotificationViewModel>(
      () => _i21.NotificationViewModel(gh<_i21.NotificationState>()));
  gh.factory<_i22.OverviewViewModel>(() => _i22.OverviewViewModel());
  gh.factory<_i23.PlanApi>(() => _i23.PlanApi(gh<_i14.Dio>()));
  gh.factory<_i24.PlanDetailViewModel>(() => _i24.PlanDetailViewModel());
  gh.factory<_i25.PlanOverViewViewModel>(() => _i25.PlanOverViewViewModel());
  gh.factory<_i26.PlanRepositories>(
      () => _i27.PlanRepositoriesImpl(gh<_i23.PlanApi>()));
  gh.factory<_i28.SessionRepositories>(() => _i29.SessionRepositoriesImpl());
  gh.factory<_i30.SettingUseCase>(() => _i30.SettingUseCase());
  gh.factory<_i31.SignInViewModel>(() => _i31.SignInViewModel());
  gh.factory<_i32.SignUpViewModel>(() => _i32.SignUpViewModel());
  gh.factory<_i33.SpeechTextService>(() => _i33.SpeechTextService());
  gh.factory<_i34.SplashViewModel>(() => _i34.SplashViewModel());
  gh.factory<_i35.TextSpeechService>(() => _i35.TextSpeechService());
  gh.factory<_i36.ViewMorePlanViewModel>(() => _i36.ViewMorePlanViewModel());
  gh.factory<_i37.WooTrackViewModel>(() => _i37.WooTrackViewModel());
  gh.factory<_i38.AuthApi>(() => _i38.AuthApi(gh<_i14.Dio>()));
  gh.factory<_i39.SettingBloc>(
      () => _i39.SettingBloc(gh<_i30.SettingUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i40.DataSourceModule {}
