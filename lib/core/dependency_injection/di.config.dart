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
    as _i58;
import '../../mvvm/data/remote/auth/auth_api.dart' as _i50;
import '../../mvvm/data/remote/daily_plan/daily_plan_api.dart' as _i53;
import '../../mvvm/data/remote/exercise/exercise_api.dart' as _i13;
import '../../mvvm/data/remote/news_health/news_api.dart' as _i20;
import '../../mvvm/data/remote/plan/plan_api.dart' as _i27;
import '../../mvvm/data/remote/session/session_api.dart' as _i32;
import '../../mvvm/data/remote/user/user_api.dart' as _i42;
import '../../mvvm/data/remote/workout_plan/workout_plan_api.dart' as _i47;
import '../../mvvm/me/entity/daily_workout/daily_workout.dart' as _i34;
import '../../mvvm/repo/auth_repositories.dart' as _i51;
import '../../mvvm/repo/calories_repositories.dart' as _i5;
import '../../mvvm/repo/chat_repositories.dart' as _i8;
import '../../mvvm/repo/daily_plan_repositories.dart' as _i54;
import '../../mvvm/repo/exercise_repositories.dart' as _i56;
import '../../mvvm/repo/news_repositories.dart' as _i22;
import '../../mvvm/repo/plan_repositories.dart' as _i30;
import '../../mvvm/repo/repo_impl/auth_repositories_impl.dart' as _i52;
import '../../mvvm/repo/repo_impl/calories_repositories_impl.dart' as _i6;
import '../../mvvm/repo/repo_impl/chat_repositories_impl.dart' as _i9;
import '../../mvvm/repo/repo_impl/daily_plan_repositories_impl.dart' as _i55;
import '../../mvvm/repo/repo_impl/exercise_repositories_impl.dart' as _i57;
import '../../mvvm/repo/repo_impl/news_repositories_impl.dart' as _i23;
import '../../mvvm/repo/repo_impl/plan_repositories_impl.dart' as _i31;
import '../../mvvm/repo/repo_impl/session_repositories_impl.dart' as _i36;
import '../../mvvm/repo/repo_impl/user_repositories_impl.dart' as _i44;
import '../../mvvm/repo/repo_impl/workout_plan_repositories_impl.dart' as _i49;
import '../../mvvm/repo/session_repositories.dart' as _i35;
import '../../mvvm/repo/user_repositories.dart' as _i43;
import '../../mvvm/repo/workout_plan_repositories.dart' as _i48;
import '../../mvvm/ui/all_exercise/view_model/all_exercise_view_model.dart'
    as _i3;
import '../../mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart' as _i37;
import '../../mvvm/ui/auth/view_model/sign_up/sign_up_view_model.dart' as _i38;
import '../../mvvm/ui/calendar/view_model/calendar_view_model.dart' as _i4;
import '../../mvvm/ui/chat_bot/view_model/chat_bot_view_model.dart' as _i7;
import '../../mvvm/ui/dashboard/view_model/dashboard_view_model.dart' as _i11;
import '../../mvvm/ui/execise_detail/view_model/exercise_detail_view_model.dart'
    as _i14;
import '../../mvvm/ui/exercise_overview/view_model/session_plan_view_model.dart'
    as _i33;
import '../../mvvm/ui/exercise_schedule/view_model/exercise_overview_view_model.dart'
    as _i15;
import '../../mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart'
    as _i16;
import '../../mvvm/ui/health_overview/view_model/health_overview_view_model.dart'
    as _i18;
import '../../mvvm/ui/news_detail/view_model/news_detail_view_model.dart'
    as _i21;
import '../../mvvm/ui/notification/view_model/notification_view_model.dart'
    as _i24;
import '../../mvvm/ui/onboarding/view_model/onboarding_view_model.dart' as _i25;
import '../../mvvm/ui/overview/view_model/overview_view_model.dart' as _i26;
import '../../mvvm/ui/plan_detail/view_model/plan_detail_view_model.dart'
    as _i28;
import '../../mvvm/ui/plan_overview/view_model/plan_overview_view_model.dart'
    as _i29;
import '../../mvvm/ui/plan_overview/view_model/view_more/view_more_plan_view_model.dart'
    as _i45;
import '../../mvvm/ui/recommend_plan/view_model/group_exercise_view_model.dart'
    as _i17;
import '../../mvvm/ui/splash/view_model/splash_view_model.dart' as _i40;
import '../../mvvm/ui/wo_trac/view_model/wo_trac_view_model.dart' as _i46;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i59;
import '../services/cloundinary_service.dart' as _i10;
import '../services/image_pic_service.dart' as _i19;
import '../services/speach_text_service.dart' as _i39;
import '../services/text_speech_service.dart' as _i41;
import 'modules/data_source_module.dart' as _i60;

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
  gh.factory<_i4.CalendarViewModel>(() => _i4.CalendarViewModel());
  gh.factory<_i5.CaloriesRepositories>(() => _i6.CaloriesRepositoriesImpl());
  gh.factory<_i7.ChatBotViewModel>(() => _i7.ChatBotViewModel());
  gh.factory<_i8.ChatRepositories>(() => _i9.ChatRepositoriesImpl());
  gh.factory<_i10.CloundinaryService>(() => _i10.CloundinaryService());
  gh.factory<_i11.DashboardViewModel>(() => _i11.DashboardViewModel(gh<int>()));
  gh.factory<_i12.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i13.ExerciseApi>(() => _i13.ExerciseApi(gh<_i12.Dio>()));
  gh.factoryParam<_i14.ExerciseDetailViewModel, int, dynamic>((
    exerciseId,
    _,
  ) =>
      _i14.ExerciseDetailViewModel(exerciseId));
  gh.factoryParam<_i15.ExerciseOverviewViewModel, int, dynamic>((
    sessionId,
    _,
  ) =>
      _i15.ExerciseOverviewViewModel(sessionId: sessionId));
  gh.factory<_i16.FitOverViewViewModel>(() => _i16.FitOverViewViewModel());
  gh.factory<_i17.GroupExerciseViewModel>(() => _i17.GroupExerciseViewModel());
  gh.factory<_i18.HealthOverviewViewModel>(
      () => _i18.HealthOverviewViewModel());
  gh.factory<_i19.ImagePicService>(() => _i19.ImagePicService());
  gh.factory<_i20.NewsApi>(() => _i20.NewsApi(gh<_i12.Dio>()));
  gh.factory<_i21.NewsDetailViewModel>(() => _i21.NewsDetailViewModel());
  gh.factory<_i22.NewsRepositories>(
      () => _i23.NewsRepositoriesImpl(gh<_i20.NewsApi>()));
  gh.factory<_i24.NotificationViewModel>(
      () => _i24.NotificationViewModel(gh<_i24.NotificationState>()));
  gh.factory<_i25.OnboardingViewModel>(() => _i25.OnboardingViewModel());
  gh.factory<_i26.OverviewViewModel>(() => _i26.OverviewViewModel());
  gh.factory<_i27.PlanApi>(() => _i27.PlanApi(gh<_i12.Dio>()));
  gh.factory<_i28.PlanDetailViewModel>(() => _i28.PlanDetailViewModel());
  gh.factory<_i29.PlanOverViewViewModel>(() => _i29.PlanOverViewViewModel());
  gh.factory<_i30.PlanRepositories>(
      () => _i31.PlanRepositoriesImpl(gh<_i27.PlanApi>()));
  gh.factory<_i32.SessionApi>(() => _i32.SessionApi(gh<_i12.Dio>()));
  gh.factoryParam<_i33.SessionPlanViewModel, _i34.DailyWorkout?, dynamic>((
    dailyWorkout,
    _,
  ) =>
      _i33.SessionPlanViewModel(dailyWorkout));
  gh.factory<_i35.SessionRepositories>(
      () => _i36.SessionRepositoriesImpl(gh<_i32.SessionApi>()));
  gh.factory<_i37.SignInViewModel>(() => _i37.SignInViewModel());
  gh.factory<_i38.SignUpViewModel>(() => _i38.SignUpViewModel());
  gh.factory<_i39.SpeechTextService>(() => _i39.SpeechTextService());
  gh.factory<_i40.SplashViewModel>(() => _i40.SplashViewModel());
  gh.factory<_i41.TextSpeechService>(() => _i41.TextSpeechService());
  gh.factory<_i42.UserApi>(() => _i42.UserApi(gh<_i12.Dio>()));
  gh.factory<_i43.UserRepositories>(
      () => _i44.UserRepositoriesImpl(gh<_i42.UserApi>()));
  gh.factory<_i45.ViewMorePlanViewModel>(() => _i45.ViewMorePlanViewModel());
  gh.factory<_i46.WooTrackViewModel>(() => _i46.WooTrackViewModel());
  gh.factory<_i47.WorkoutPlanApi>(() => _i47.WorkoutPlanApi(gh<_i12.Dio>()));
  gh.factory<_i48.WorkoutPlanRepositories>(
      () => _i49.WorkoutPlanRepositoriesImpl(gh<_i47.WorkoutPlanApi>()));
  gh.factory<_i50.AuthApi>(() => _i50.AuthApi(gh<_i12.Dio>()));
  gh.factory<_i51.AuthRepositories>(
      () => _i52.AuthRepositoriesImpl(gh<_i50.AuthApi>()));
  gh.factory<_i53.DailyPlanApi>(() => _i53.DailyPlanApi(gh<_i12.Dio>()));
  gh.factory<_i54.DailyPlanRepositories>(
      () => _i55.DailyPlanRepositoriesImpl(gh<_i53.DailyPlanApi>()));
  gh.factory<_i56.ExerciseRepositories>(() => _i57.ExerciseRepositoriesImpl(
        gh<_i13.ExerciseApi>(),
        gh<_i32.SessionApi>(),
      ));
  gh.factory<_i58.SettingUseCase>(
      () => _i58.SettingUseCase(gh<_i43.UserRepositories>()));
  gh.factory<_i59.SettingBloc>(
      () => _i59.SettingBloc(gh<_i58.SettingUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i60.DataSourceModule {}
