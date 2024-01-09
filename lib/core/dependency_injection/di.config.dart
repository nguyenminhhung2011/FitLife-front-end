// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../clean_architectures/domain/usecase/setting/setting_usecase.dart'
    as _i70;
import '../../mvvm/data/remote/auth/auth_api.dart' as _i62;
import '../../mvvm/data/remote/daily_plan/daily_plan_api.dart' as _i65;
import '../../mvvm/data/remote/exercise/exercise_api.dart' as _i17;
import '../../mvvm/data/remote/news_health/news_api.dart' as _i30;
import '../../mvvm/data/remote/plan/plan_api.dart' as _i38;
import '../../mvvm/data/remote/session/session_api.dart' as _i43;
import '../../mvvm/data/remote/trainer/trainer_api.dart' as _i53;
import '../../mvvm/data/remote/user/user_api.dart' as _i54;
import '../../mvvm/data/remote/workout_plan/workout_plan_api.dart' as _i59;
import '../../mvvm/object/entity/daily_workout/daily_workout.dart' as _i45;
import '../../mvvm/repositories/auth_repositories.dart' as _i63;
import '../../mvvm/repositories/calories_repositories.dart' as _i7;
import '../../mvvm/repositories/chat_repositories.dart' as _i11;
import '../../mvvm/repositories/daily_plan_repositories.dart' as _i66;
import '../../mvvm/repositories/exercise_repositories.dart' as _i68;
import '../../mvvm/repositories/implements/auth_repositories_impl.dart' as _i64;
import '../../mvvm/repositories/implements/calories_repositories_impl.dart'
    as _i8;
import '../../mvvm/repositories/implements/chat_repositories_impl.dart' as _i12;
import '../../mvvm/repositories/implements/daily_plan_repositories_impl.dart'
    as _i67;
import '../../mvvm/repositories/implements/exercise_repositories_impl.dart'
    as _i69;
import '../../mvvm/repositories/implements/message_repositories_impl.dart'
    as _i29;
import '../../mvvm/repositories/implements/news_repositories_impl.dart' as _i33;
import '../../mvvm/repositories/implements/plan_repositories_impl.dart' as _i42;
import '../../mvvm/repositories/implements/session_repositories_impl.dart'
    as _i47;
import '../../mvvm/repositories/implements/user_repositories_impl.dart' as _i56;
import '../../mvvm/repositories/implements/workout_plan_repositories_impl.dart'
    as _i61;
import '../../mvvm/repositories/message_repositories.dart' as _i28;
import '../../mvvm/repositories/news_repositories.dart' as _i32;
import '../../mvvm/repositories/plan_repositories.dart' as _i41;
import '../../mvvm/repositories/session_repositories.dart' as _i46;
import '../../mvvm/repositories/user_repositories.dart' as _i55;
import '../../mvvm/repositories/workout_plan_repositories.dart' as _i60;
import '../../mvvm/ui/all_exercise/view_model/all_exercise_view_model.dart'
    as _i5;
import '../../mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart' as _i48;
import '../../mvvm/ui/auth/view_model/sign_up/sign_up_view_model.dart' as _i49;
import '../../mvvm/ui/calendar/view_model/calendar_view_model.dart' as _i6;
import '../../mvvm/ui/category/view_model/category_view_model.dart' as _i9;
import '../../mvvm/ui/chat_bot/view_model/all_chat/all_chat_view_model.dart'
    as _i4;
import '../../mvvm/ui/chat_bot/view_model/api_key/input_api_cubit.dart' as _i25;
import '../../mvvm/ui/chat_bot/view_model/chat_bot/chat_bot_view_model.dart'
    as _i10;
import '../../mvvm/ui/chat_bot/view_model/create_bot/create_bot_view_model.dart'
    as _i14;
import '../../mvvm/ui/chat_bot/view_model/main_chat/main_chat_view_model.dart'
    as _i27;
import '../../mvvm/ui/dashboard/view_model/dashboard_view_model.dart' as _i15;
import '../../mvvm/ui/execise_detail/view_model/exercise_detail_view_model.dart'
    as _i18;
import '../../mvvm/ui/exercise_schedule/view_model/add_exercise/add_exercise_view_model.dart'
    as _i3;
import '../../mvvm/ui/exercise_schedule/view_model/exercise_overview/exercise_overview_view_model.dart'
    as _i19;
import '../../mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart'
    as _i21;
import '../../mvvm/ui/health_overview/view_model/health_overview_view_model.dart'
    as _i23;
import '../../mvvm/ui/list_news/view_model/list_news_view_model.dart' as _i26;
import '../../mvvm/ui/news_detail/view_model/news_detail_view_model.dart'
    as _i31;
import '../../mvvm/ui/notification/view_model/notification_view_model.dart'
    as _i35;
import '../../mvvm/ui/onboarding/view_model/onboarding_view_model.dart' as _i36;
import '../../mvvm/ui/overview/view_model/overview_view_model.dart' as _i37;
import '../../mvvm/ui/plan_detail/view_model/plan_detail_view_model.dart'
    as _i39;
import '../../mvvm/ui/plan_overview/view_model/plan_overview/plan_overview_view_model.dart'
    as _i40;
import '../../mvvm/ui/plan_overview/view_model/view_more/view_more_plan_view_model.dart'
    as _i57;
import '../../mvvm/ui/recommend_plan/view_model/group_exercise_view_model.dart'
    as _i22;
import '../../mvvm/ui/session_plan/view_model/session_plan_view_model.dart'
    as _i44;
import '../../mvvm/ui/splash/view_model/splash_view_model.dart' as _i51;
import '../../mvvm/ui/wo_trac/view_model/wo_trac_view_model.dart' as _i58;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i71;
import '../services/cloundinary_service.dart' as _i13;
import '../services/fcm/fcm_service.dart' as _i20;
import '../services/image_pic_service.dart' as _i24;
import '../services/notification_service.dart' as _i34;
import '../services/speach_text_service.dart' as _i50;
import '../services/text_speech_service.dart' as _i52;
import 'modules/data_source_module.dart' as _i72;

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
  gh.factory<_i4.AllChatViewModel>(() => _i4.AllChatViewModel());
  gh.factoryParam<_i5.AllExerciseViewModel, String, dynamic>((
    categoryId,
    _,
  ) =>
      _i5.AllExerciseViewModel(categoryId: categoryId));
  gh.factory<_i6.CalendarViewModel>(() => _i6.CalendarViewModel());
  gh.factory<_i7.CaloriesRepositories>(() => _i8.CaloriesRepositoriesImpl());
  gh.factory<_i9.CategoryViewModel>(() => _i9.CategoryViewModel());
  gh.factory<_i10.ChatBotViewModel>(() => _i10.ChatBotViewModel());
  gh.factory<_i11.ChatRepositories>(() => _i12.ChatRepositoriesImpl());
  gh.factory<_i13.CloundinaryService>(() => _i13.CloundinaryService());
  gh.factory<_i14.CreateBotViewModel>(() => _i14.CreateBotViewModel());
  gh.factory<_i15.DashboardViewModel>(() => _i15.DashboardViewModel(gh<int>()));
  gh.factory<_i16.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i17.ExerciseApi>(() => _i17.ExerciseApi(gh<_i16.Dio>()));
  gh.factoryParam<_i18.ExerciseDetailViewModel, int, dynamic>((
    exerciseId,
    _,
  ) =>
      _i18.ExerciseDetailViewModel(exerciseId));
  gh.factory<_i19.ExerciseOverviewViewModel>(
      () => _i19.ExerciseOverviewViewModel());
  gh.singleton<_i20.FCMService>(_i20.FCMService());
  gh.factory<_i21.FitOverViewViewModel>(() => _i21.FitOverViewViewModel());
  gh.factory<_i22.GroupExerciseViewModel>(() => _i22.GroupExerciseViewModel());
  gh.factory<_i23.HealthOverviewViewModel>(
      () => _i23.HealthOverviewViewModel());
  gh.factory<_i24.ImagePicService>(() => _i24.ImagePicService());
  gh.factory<_i25.InputApiCubit>(() => _i25.InputApiCubit());
  gh.factory<_i26.ListNewsViewModel>(() => _i26.ListNewsViewModel());
  gh.factory<_i27.MainChatViewModel>(() => _i27.MainChatViewModel());
  gh.factory<_i28.MessageRepositories>(() => _i29.MessageRepositoriesImpl());
  gh.factory<_i30.NewsApi>(() => _i30.NewsApi(gh<_i16.Dio>()));
  gh.factory<_i31.NewsDetailViewModel>(() => _i31.NewsDetailViewModel());
  gh.factory<_i32.NewsRepositories>(
      () => _i33.NewsRepositoriesImpl(gh<_i30.NewsApi>()));
  gh.singleton<_i34.NotificationService>(_i34.NotificationService());
  gh.factory<_i35.NotificationViewModel>(
      () => _i35.NotificationViewModel(gh<_i35.NotificationState>()));
  gh.factory<_i36.OnboardingViewModel>(() => _i36.OnboardingViewModel());
  gh.factory<_i37.OverviewViewModel>(() => _i37.OverviewViewModel());
  gh.factory<_i38.PlanApi>(() => _i38.PlanApi(gh<_i16.Dio>()));
  gh.factory<_i39.PlanDetailViewModel>(() => _i39.PlanDetailViewModel());
  gh.factory<_i40.PlanOverViewViewModel>(() => _i40.PlanOverViewViewModel());
  gh.factory<_i41.PlanRepositories>(
      () => _i42.PlanRepositoriesImpl(gh<_i38.PlanApi>()));
  gh.factory<_i43.SessionApi>(() => _i43.SessionApi(gh<_i16.Dio>()));
  gh.factoryParam<_i44.SessionPlanViewModel, _i45.DailyWorkout?, dynamic>((
    dailyWorkout,
    _,
  ) =>
      _i44.SessionPlanViewModel(dailyWorkout));
  gh.factory<_i46.SessionRepositories>(
      () => _i47.SessionRepositoriesImpl(gh<_i43.SessionApi>()));
  gh.factory<_i48.SignInViewModel>(() => _i48.SignInViewModel());
  gh.factory<_i49.SignUpViewModel>(() => _i49.SignUpViewModel());
  gh.factory<_i50.SpeechTextService>(() => _i50.SpeechTextService());
  gh.factory<_i51.SplashViewModel>(() => _i51.SplashViewModel());
  gh.factory<_i52.TextSpeechService>(() => _i52.TextSpeechService());
  gh.factory<_i53.TrainerApi>(() => _i53.TrainerApi(gh<_i16.Dio>()));
  gh.factory<_i54.UserApi>(() => _i54.UserApi(gh<_i16.Dio>()));
  gh.factory<_i55.UserRepositories>(
      () => _i56.UserRepositoriesImpl(gh<_i54.UserApi>()));
  gh.factory<_i57.ViewMorePlanViewModel>(() => _i57.ViewMorePlanViewModel());
  gh.factory<_i58.WooTrackViewModel>(() => _i58.WooTrackViewModel());
  gh.factory<_i59.WorkoutPlanApi>(() => _i59.WorkoutPlanApi(gh<_i16.Dio>()));
  gh.factory<_i60.WorkoutPlanRepositories>(
      () => _i61.WorkoutPlanRepositoriesImpl(gh<_i59.WorkoutPlanApi>()));
  gh.factory<_i62.AuthApi>(() => _i62.AuthApi(gh<_i16.Dio>()));
  gh.factory<_i63.AuthRepositories>(
      () => _i64.AuthRepositoriesImpl(gh<_i62.AuthApi>()));
  gh.factory<_i65.DailyPlanApi>(() => _i65.DailyPlanApi(gh<_i16.Dio>()));
  gh.factory<_i66.DailyPlanRepositories>(
      () => _i67.DailyPlanRepositoriesImpl(gh<_i65.DailyPlanApi>()));
  gh.factory<_i68.ExerciseRepositories>(() => _i69.ExerciseRepositoriesImpl(
        gh<_i17.ExerciseApi>(),
        gh<_i43.SessionApi>(),
      ));
  gh.factory<_i70.SettingUseCase>(
      () => _i70.SettingUseCase(gh<_i55.UserRepositories>()));
  gh.factory<_i71.SettingBloc>(
      () => _i71.SettingBloc(gh<_i70.SettingUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i72.DataSourceModule {}
