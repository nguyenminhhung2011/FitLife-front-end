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
    as _i54;
import '../../mvvm/data/remote/auth/auth_api.dart' as _i46;
import '../../mvvm/data/remote/daily_plan/daily_plan_api.dart' as _i49;
import '../../mvvm/data/remote/exercise/exercise_api.dart' as _i13;
import '../../mvvm/data/remote/plan/plan_api.dart' as _i23;
import '../../mvvm/data/remote/session/session_api.dart' as _i28;
import '../../mvvm/data/remote/user/user_api.dart' as _i38;
import '../../mvvm/data/remote/workout_plan/workout_plan_api.dart' as _i43;
import '../../mvvm/me/entity/daily_workout/daily_workout.dart' as _i30;
import '../../mvvm/repo/auth_repositories.dart' as _i47;
import '../../mvvm/repo/calories_repositories.dart' as _i5;
import '../../mvvm/repo/chat_repositories.dart' as _i8;
import '../../mvvm/repo/daily_plan_repositories.dart' as _i50;
import '../../mvvm/repo/exercise_repositories.dart' as _i52;
import '../../mvvm/repo/plan_repositories.dart' as _i26;
import '../../mvvm/repo/repo_impl/auth_repositories_impl.dart' as _i48;
import '../../mvvm/repo/repo_impl/calories_repositories_impl.dart' as _i6;
import '../../mvvm/repo/repo_impl/chat_repositories_impl.dart' as _i9;
import '../../mvvm/repo/repo_impl/daily_plan_repositories_impl.dart' as _i51;
import '../../mvvm/repo/repo_impl/exercise_repositories_impl.dart' as _i53;
import '../../mvvm/repo/repo_impl/plan_repositories_impl.dart' as _i27;
import '../../mvvm/repo/repo_impl/session_repositories_impl.dart' as _i32;
import '../../mvvm/repo/repo_impl/user_repositories_impl.dart' as _i40;
import '../../mvvm/repo/repo_impl/workout_plan_repositories_impl.dart' as _i45;
import '../../mvvm/repo/session_repositories.dart' as _i31;
import '../../mvvm/repo/user_repositories.dart' as _i39;
import '../../mvvm/repo/workout_plan_repositories.dart' as _i44;
import '../../mvvm/ui/all_exercise/view_model/all_exercise_view_model.dart'
    as _i3;
import '../../mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart' as _i33;
import '../../mvvm/ui/auth/view_model/sign_up/sign_up_view_model.dart' as _i34;
import '../../mvvm/ui/calendar/view_model/calendar_view_model.dart' as _i4;
import '../../mvvm/ui/chat_bot/view_model/chat_bot_view_model.dart' as _i7;
import '../../mvvm/ui/dashboard/view_model/dashboard_view_model.dart' as _i11;
import '../../mvvm/ui/execise_detail/view_model/exercise_detail_view_model.dart'
    as _i14;
import '../../mvvm/ui/exercise_overview/view_model/session_plan_view_model.dart'
    as _i29;
import '../../mvvm/ui/exercise_schedule/view_model/exercise_overview_view_model.dart'
    as _i15;
import '../../mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart'
    as _i16;
import '../../mvvm/ui/health_overview/view_model/health_overview_view_model.dart'
    as _i18;
import '../../mvvm/ui/notification/view_model/notification_view_model.dart'
    as _i20;
import '../../mvvm/ui/onboarding/view_model/onboarding_view_model.dart' as _i21;
import '../../mvvm/ui/overview/view_model/overview_view_model.dart' as _i22;
import '../../mvvm/ui/plan_detail/view_model/plan_detail_view_model.dart'
    as _i24;
import '../../mvvm/ui/plan_overview/view_model/plan_overview_view_model.dart'
    as _i25;
import '../../mvvm/ui/plan_overview/view_model/view_more/view_more_plan_view_model.dart'
    as _i41;
import '../../mvvm/ui/recommend_plan/view_model/group_exercise_view_model.dart'
    as _i17;
import '../../mvvm/ui/splash/view_model/splash_view_model.dart' as _i36;
import '../../mvvm/ui/wo_trac/view_model/wo_trac_view_model.dart' as _i42;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i55;
import '../services/cloundinary_service.dart' as _i10;
import '../services/image_pic_service.dart' as _i19;
import '../services/speach_text_service.dart' as _i35;
import '../services/text_speech_service.dart' as _i37;
import 'modules/data_source_module.dart' as _i56;

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
  gh.factory<_i20.NotificationViewModel>(
      () => _i20.NotificationViewModel(gh<_i20.NotificationState>()));
  gh.factory<_i21.OnboardingViewModel>(() => _i21.OnboardingViewModel());
  gh.factory<_i22.OverviewViewModel>(() => _i22.OverviewViewModel());
  gh.factory<_i23.PlanApi>(() => _i23.PlanApi(gh<_i12.Dio>()));
  gh.factory<_i24.PlanDetailViewModel>(() => _i24.PlanDetailViewModel());
  gh.factory<_i25.PlanOverViewViewModel>(() => _i25.PlanOverViewViewModel());
  gh.factory<_i26.PlanRepositories>(
      () => _i27.PlanRepositoriesImpl(gh<_i23.PlanApi>()));
  gh.factory<_i28.SessionApi>(() => _i28.SessionApi(gh<_i12.Dio>()));
  gh.factoryParam<_i29.SessionPlanViewModel, _i30.DailyWorkout?, dynamic>((
    dailyWorkout,
    _,
  ) =>
      _i29.SessionPlanViewModel(dailyWorkout));
  gh.factory<_i31.SessionRepositories>(
      () => _i32.SessionRepositoriesImpl(gh<_i28.SessionApi>()));
  gh.factory<_i33.SignInViewModel>(() => _i33.SignInViewModel());
  gh.factory<_i34.SignUpViewModel>(() => _i34.SignUpViewModel());
  gh.factory<_i35.SpeechTextService>(() => _i35.SpeechTextService());
  gh.factory<_i36.SplashViewModel>(() => _i36.SplashViewModel());
  gh.factory<_i37.TextSpeechService>(() => _i37.TextSpeechService());
  gh.factory<_i38.UserApi>(() => _i38.UserApi(gh<_i12.Dio>()));
  gh.factory<_i39.UserRepositories>(
      () => _i40.UserRepositoriesImpl(gh<_i38.UserApi>()));
  gh.factory<_i41.ViewMorePlanViewModel>(() => _i41.ViewMorePlanViewModel());
  gh.factory<_i42.WooTrackViewModel>(() => _i42.WooTrackViewModel());
  gh.factory<_i43.WorkoutPlanApi>(() => _i43.WorkoutPlanApi(gh<_i12.Dio>()));
  gh.factory<_i44.WorkoutPlanRepositories>(
      () => _i45.WorkoutPlanRepositoriesImpl(gh<_i43.WorkoutPlanApi>()));
  gh.factory<_i46.AuthApi>(() => _i46.AuthApi(gh<_i12.Dio>()));
  gh.factory<_i47.AuthRepositories>(
      () => _i48.AuthRepositoriesImpl(gh<_i46.AuthApi>()));
  gh.factory<_i49.DailyPlanApi>(() => _i49.DailyPlanApi(gh<_i12.Dio>()));
  gh.factory<_i50.DailyPlanRepositories>(
      () => _i51.DailyPlanRepositoriesImpl(gh<_i49.DailyPlanApi>()));
  gh.factory<_i52.ExerciseRepositories>(() => _i53.ExerciseRepositoriesImpl(
        gh<_i13.ExerciseApi>(),
        gh<_i28.SessionApi>(),
      ));
  gh.factory<_i54.SettingUseCase>(
      () => _i54.SettingUseCase(gh<_i39.UserRepositories>()));
  gh.factory<_i55.SettingBloc>(
      () => _i55.SettingBloc(gh<_i54.SettingUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i56.DataSourceModule {}
