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
    as _i65;
import '../../mvvm/data/remote/auth/auth_api.dart' as _i57;
import '../../mvvm/data/remote/daily_plan/daily_plan_api.dart' as _i60;
import '../../mvvm/data/remote/exercise/exercise_api.dart' as _i15;
import '../../mvvm/data/remote/news_health/news_api.dart' as _i26;
import '../../mvvm/data/remote/plan/plan_api.dart' as _i34;
import '../../mvvm/data/remote/session/session_api.dart' as _i39;
import '../../mvvm/data/remote/user/user_api.dart' as _i49;
import '../../mvvm/data/remote/workout_plan/workout_plan_api.dart' as _i54;
import '../../mvvm/me/entity/daily_workout/daily_workout.dart' as _i41;
import '../../mvvm/repo/auth_repositories.dart' as _i58;
import '../../mvvm/repo/calories_repositories.dart' as _i6;
import '../../mvvm/repo/chat_repositories.dart' as _i9;
import '../../mvvm/repo/daily_plan_repositories.dart' as _i61;
import '../../mvvm/repo/exercise_repositories.dart' as _i63;
import '../../mvvm/repo/news_repositories.dart' as _i28;
import '../../mvvm/repo/plan_repositories.dart' as _i37;
import '../../mvvm/repo/repo_impl/auth_repositories_impl.dart' as _i59;
import '../../mvvm/repo/repo_impl/calories_repositories_impl.dart' as _i7;
import '../../mvvm/repo/repo_impl/chat_repositories_impl.dart' as _i10;
import '../../mvvm/repo/repo_impl/daily_plan_repositories_impl.dart' as _i62;
import '../../mvvm/repo/repo_impl/exercise_repositories_impl.dart' as _i64;
import '../../mvvm/repo/repo_impl/news_repositories_impl.dart' as _i29;
import '../../mvvm/repo/repo_impl/plan_repositories_impl.dart' as _i38;
import '../../mvvm/repo/repo_impl/session_repositories_impl.dart' as _i43;
import '../../mvvm/repo/repo_impl/user_repositories_impl.dart' as _i51;
import '../../mvvm/repo/repo_impl/workout_plan_repositories_impl.dart' as _i56;
import '../../mvvm/repo/session_repositories.dart' as _i42;
import '../../mvvm/repo/user_repositories.dart' as _i50;
import '../../mvvm/repo/workout_plan_repositories.dart' as _i55;
import '../../mvvm/ui/all_exercise/view_model/all_exercise_view_model.dart'
    as _i4;
import '../../mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart' as _i44;
import '../../mvvm/ui/auth/view_model/sign_up/sign_up_view_model.dart' as _i45;
import '../../mvvm/ui/calendar/view_model/calendar_view_model.dart' as _i5;
import '../../mvvm/ui/chat_bot/view_model/api_key/input_api_cubit.dart' as _i23;
import '../../mvvm/ui/chat_bot/view_model/chat_bot/chat_bot_view_model.dart'
    as _i8;
import '../../mvvm/ui/chat_bot/view_model/create_bot/create_bot_view_model.dart'
    as _i12;
import '../../mvvm/ui/chat_bot/view_model/main_chat/main_chat_view_model.dart'
    as _i25;
import '../../mvvm/ui/dashboard/view_model/dashboard_view_model.dart' as _i13;
import '../../mvvm/ui/execise_detail/view_model/exercise_detail_view_model.dart'
    as _i16;
import '../../mvvm/ui/exercise_overview/view_model/session_plan_view_model.dart'
    as _i40;
import '../../mvvm/ui/exercise_schedule/view_model/add_exercise/add_exercise_view_model.dart'
    as _i3;
import '../../mvvm/ui/exercise_schedule/view_model/exercise_overview_view_model.dart'
    as _i17;
import '../../mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart'
    as _i19;
import '../../mvvm/ui/health_overview/view_model/health_overview_view_model.dart'
    as _i21;
import '../../mvvm/ui/list_news/view_model/list_news_view_model.dart' as _i24;
import '../../mvvm/ui/news_detail/view_model/news_detail_view_model.dart'
    as _i27;
import '../../mvvm/ui/notification/view_model/notification_view_model.dart'
    as _i31;
import '../../mvvm/ui/onboarding/view_model/onboarding_view_model.dart' as _i32;
import '../../mvvm/ui/overview/view_model/overview_view_model.dart' as _i33;
import '../../mvvm/ui/plan_detail/view_model/plan_detail_view_model.dart'
    as _i35;
import '../../mvvm/ui/plan_overview/view_model/plan_overview_view_model.dart'
    as _i36;
import '../../mvvm/ui/plan_overview/view_model/view_more/view_more_plan_view_model.dart'
    as _i52;
import '../../mvvm/ui/recommend_plan/view_model/group_exercise_view_model.dart'
    as _i20;
import '../../mvvm/ui/splash/view_model/splash_view_model.dart' as _i47;
import '../../mvvm/ui/wo_trac/view_model/wo_trac_view_model.dart' as _i53;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i66;
import '../services/cloundinary_service.dart' as _i11;
import '../services/fcm/fcm_service.dart' as _i18;
import '../services/image_pic_service.dart' as _i22;
import '../services/notification_service.dart' as _i30;
import '../services/speach_text_service.dart' as _i46;
import '../services/text_speech_service.dart' as _i48;
import 'modules/data_source_module.dart' as _i67;

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
  gh.factory<_i3.AddExerciseViewModel>(() => _i3.AddExerciseViewModel());
  gh.factoryParam<_i4.AllExerciseViewModel, String, dynamic>((
    categoryId,
    _,
  ) =>
      _i4.AllExerciseViewModel(categoryId: categoryId));
  gh.factory<_i5.CalendarViewModel>(() => _i5.CalendarViewModel());
  gh.factory<_i6.CaloriesRepositories>(() => _i7.CaloriesRepositoriesImpl());
  gh.factory<_i8.ChatBotViewModel>(() => _i8.ChatBotViewModel());
  gh.factory<_i9.ChatRepositories>(() => _i10.ChatRepositoriesImpl());
  gh.factory<_i11.CloundinaryService>(() => _i11.CloundinaryService());
  gh.factory<_i12.CreateBotViewModel>(() => _i12.CreateBotViewModel());
  gh.factory<_i13.DashboardViewModel>(() => _i13.DashboardViewModel(gh<int>()));
  gh.factory<_i14.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i15.ExerciseApi>(() => _i15.ExerciseApi(gh<_i14.Dio>()));
  gh.factoryParam<_i16.ExerciseDetailViewModel, int, dynamic>((
    exerciseId,
    _,
  ) =>
      _i16.ExerciseDetailViewModel(exerciseId));
  gh.factory<_i17.ExerciseOverviewViewModel>(
      () => _i17.ExerciseOverviewViewModel());
  gh.singleton<_i18.FCMService>(_i18.FCMService());
  gh.factory<_i19.FitOverViewViewModel>(() => _i19.FitOverViewViewModel());
  gh.factory<_i20.GroupExerciseViewModel>(() => _i20.GroupExerciseViewModel());
  gh.factory<_i21.HealthOverviewViewModel>(
      () => _i21.HealthOverviewViewModel());
  gh.factory<_i22.ImagePicService>(() => _i22.ImagePicService());
  gh.factory<_i23.InputApiCubit>(() => _i23.InputApiCubit());
  gh.factory<_i24.ListNewsViewModel>(() => _i24.ListNewsViewModel());
  gh.factory<_i25.MainChatViewModel>(() => _i25.MainChatViewModel());
  gh.factory<_i26.NewsApi>(() => _i26.NewsApi(gh<_i14.Dio>()));
  gh.factory<_i27.NewsDetailViewModel>(() => _i27.NewsDetailViewModel());
  gh.factory<_i28.NewsRepositories>(
      () => _i29.NewsRepositoriesImpl(gh<_i26.NewsApi>()));
  gh.singleton<_i30.NotificationService>(_i30.NotificationService());
  gh.factory<_i31.NotificationViewModel>(
      () => _i31.NotificationViewModel(gh<_i31.NotificationState>()));
  gh.factory<_i32.OnboardingViewModel>(() => _i32.OnboardingViewModel());
  gh.factory<_i33.OverviewViewModel>(() => _i33.OverviewViewModel());
  gh.factory<_i34.PlanApi>(() => _i34.PlanApi(gh<_i14.Dio>()));
  gh.factory<_i35.PlanDetailViewModel>(() => _i35.PlanDetailViewModel());
  gh.factory<_i36.PlanOverViewViewModel>(() => _i36.PlanOverViewViewModel());
  gh.factory<_i37.PlanRepositories>(
      () => _i38.PlanRepositoriesImpl(gh<_i34.PlanApi>()));
  gh.factory<_i39.SessionApi>(() => _i39.SessionApi(gh<_i14.Dio>()));
  gh.factoryParam<_i40.SessionPlanViewModel, _i41.DailyWorkout?, dynamic>((
    dailyWorkout,
    _,
  ) =>
      _i40.SessionPlanViewModel(dailyWorkout));
  gh.factory<_i42.SessionRepositories>(
      () => _i43.SessionRepositoriesImpl(gh<_i39.SessionApi>()));
  gh.factory<_i44.SignInViewModel>(() => _i44.SignInViewModel());
  gh.factory<_i45.SignUpViewModel>(() => _i45.SignUpViewModel());
  gh.factory<_i46.SpeechTextService>(() => _i46.SpeechTextService());
  gh.factory<_i47.SplashViewModel>(() => _i47.SplashViewModel());
  gh.factory<_i48.TextSpeechService>(() => _i48.TextSpeechService());
  gh.factory<_i49.UserApi>(() => _i49.UserApi(gh<_i14.Dio>()));
  gh.factory<_i50.UserRepositories>(
      () => _i51.UserRepositoriesImpl(gh<_i49.UserApi>()));
  gh.factory<_i52.ViewMorePlanViewModel>(() => _i52.ViewMorePlanViewModel());
  gh.factory<_i53.WooTrackViewModel>(() => _i53.WooTrackViewModel());
  gh.factory<_i54.WorkoutPlanApi>(() => _i54.WorkoutPlanApi(gh<_i14.Dio>()));
  gh.factory<_i55.WorkoutPlanRepositories>(
      () => _i56.WorkoutPlanRepositoriesImpl(gh<_i54.WorkoutPlanApi>()));
  gh.factory<_i57.AuthApi>(() => _i57.AuthApi(gh<_i14.Dio>()));
  gh.factory<_i58.AuthRepositories>(
      () => _i59.AuthRepositoriesImpl(gh<_i57.AuthApi>()));
  gh.factory<_i60.DailyPlanApi>(() => _i60.DailyPlanApi(gh<_i14.Dio>()));
  gh.factory<_i61.DailyPlanRepositories>(
      () => _i62.DailyPlanRepositoriesImpl(gh<_i60.DailyPlanApi>()));
  gh.factory<_i63.ExerciseRepositories>(() => _i64.ExerciseRepositoriesImpl(
        gh<_i15.ExerciseApi>(),
        gh<_i39.SessionApi>(),
      ));
  gh.factory<_i65.SettingUseCase>(
      () => _i65.SettingUseCase(gh<_i50.UserRepositories>()));
  gh.factory<_i66.SettingBloc>(
      () => _i66.SettingBloc(gh<_i65.SettingUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i67.DataSourceModule {}
