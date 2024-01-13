// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i17;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../clean_architectures/domain/usecase/setting/setting_usecase.dart'
    as _i76;
import '../../mvvm/data/remote/auth/auth_api.dart' as _i68;
import '../../mvvm/data/remote/daily_plan/daily_plan_api.dart' as _i71;
import '../../mvvm/data/remote/exercise/exercise_api.dart' as _i18;
import '../../mvvm/data/remote/news_health/news_api.dart' as _i31;
import '../../mvvm/data/remote/open_ai/open_ai_api.dart' as _i38;
import '../../mvvm/data/remote/plan/plan_api.dart' as _i42;
import '../../mvvm/data/remote/session/session_api.dart' as _i47;
import '../../mvvm/data/remote/trainer/trainer_api.dart' as _i57;
import '../../mvvm/data/remote/user/user_api.dart' as _i60;
import '../../mvvm/data/remote/workout_plan/workout_plan_api.dart' as _i65;
import '../../mvvm/object/entity/daily_workout/daily_workout.dart' as _i49;
import '../../mvvm/repositories/auth_repositories.dart' as _i69;
import '../../mvvm/repositories/calories_repositories.dart' as _i8;
import '../../mvvm/repositories/chat_repositories.dart' as _i12;
import '../../mvvm/repositories/daily_plan_repositories.dart' as _i72;
import '../../mvvm/repositories/exercise_repositories.dart' as _i74;
import '../../mvvm/repositories/implements/auth_repositories_impl.dart' as _i70;
import '../../mvvm/repositories/implements/calories_repositories_impl.dart'
    as _i9;
import '../../mvvm/repositories/implements/chat_repositories_impl.dart' as _i13;
import '../../mvvm/repositories/implements/daily_plan_repositories_impl.dart'
    as _i73;
import '../../mvvm/repositories/implements/exercise_repositories_impl.dart'
    as _i75;
import '../../mvvm/repositories/implements/message_repositories_impl.dart'
    as _i30;
import '../../mvvm/repositories/implements/news_repositories_impl.dart' as _i34;
import '../../mvvm/repositories/implements/open_ai_repositories_impl.dart'
    as _i40;
import '../../mvvm/repositories/implements/plan_repositories_impl.dart' as _i46;
import '../../mvvm/repositories/implements/session_repositories_impl.dart'
    as _i51;
import '../../mvvm/repositories/implements/trainer_repositories_impl.dart'
    as _i59;
import '../../mvvm/repositories/implements/user_repositories_impl.dart' as _i62;
import '../../mvvm/repositories/implements/workout_plan_repositories_impl.dart'
    as _i67;
import '../../mvvm/repositories/message_repositories.dart' as _i29;
import '../../mvvm/repositories/news_repositories.dart' as _i33;
import '../../mvvm/repositories/open_ai_repositories.dart' as _i39;
import '../../mvvm/repositories/plan_repositories.dart' as _i45;
import '../../mvvm/repositories/session_repositories.dart' as _i50;
import '../../mvvm/repositories/trainer_repositories.dart' as _i58;
import '../../mvvm/repositories/user_repositories.dart' as _i61;
import '../../mvvm/repositories/workout_plan_repositories.dart' as _i66;
import '../../mvvm/ui/all_exercise/view_model/all_exercise_view_model.dart'
    as _i5;
import '../../mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart' as _i52;
import '../../mvvm/ui/auth/view_model/sign_up/sign_up_view_model.dart' as _i53;
import '../../mvvm/ui/calendar/view_model/calendar_view_model.dart' as _i7;
import '../../mvvm/ui/category/view_model/category_view_model.dart' as _i10;
import '../../mvvm/ui/chat_bot/view_model/all_chat/all_chat_view_model.dart'
    as _i4;
import '../../mvvm/ui/chat_bot/view_model/all_pt/all_pt_view_model.dart' as _i6;
import '../../mvvm/ui/chat_bot/view_model/api_key/input_api_cubit.dart' as _i26;
import '../../mvvm/ui/chat_bot/view_model/chat_bot/chat_bot_view_model.dart'
    as _i11;
import '../../mvvm/ui/chat_bot/view_model/create_bot/create_bot_view_model.dart'
    as _i15;
import '../../mvvm/ui/chat_bot/view_model/main_chat/main_chat_view_model.dart'
    as _i28;
import '../../mvvm/ui/dashboard/view_model/dashboard_view_model.dart' as _i16;
import '../../mvvm/ui/execise_detail/view_model/exercise_detail_view_model.dart'
    as _i19;
import '../../mvvm/ui/exercise_schedule/view_model/add_exercise/add_exercise_view_model.dart'
    as _i3;
import '../../mvvm/ui/exercise_schedule/view_model/exercise_overview/exercise_overview_view_model.dart'
    as _i20;
import '../../mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart'
    as _i22;
import '../../mvvm/ui/health_overview/view_model/health_overview_view_model.dart'
    as _i24;
import '../../mvvm/ui/list_news/view_model/list_news_view_model.dart' as _i27;
import '../../mvvm/ui/news_detail/view_model/news_detail_view_model.dart'
    as _i32;
import '../../mvvm/ui/notification/view_model/notification_view_model.dart'
    as _i36;
import '../../mvvm/ui/onboarding/view_model/onboarding_view_model.dart' as _i37;
import '../../mvvm/ui/overview/view_model/overview_view_model.dart' as _i41;
import '../../mvvm/ui/plan_detail/view_model/plan_detail_view_model.dart'
    as _i43;
import '../../mvvm/ui/plan_overview/view_model/plan_overview/plan_overview_view_model.dart'
    as _i44;
import '../../mvvm/ui/plan_overview/view_model/view_more/view_more_plan_view_model.dart'
    as _i63;
import '../../mvvm/ui/recommend_plan/view_model/group_exercise_view_model.dart'
    as _i23;
import '../../mvvm/ui/session_plan/view_model/session_plan_view_model.dart'
    as _i48;
import '../../mvvm/ui/splash/view_model/splash_view_model.dart' as _i55;
import '../../mvvm/ui/wo_trac/view_model/wo_trac_view_model.dart' as _i64;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i77;
import '../services/cloundinary_service.dart' as _i14;
import '../services/fcm/fcm_service.dart' as _i21;
import '../services/image_pic_service.dart' as _i25;
import '../services/notification_service.dart' as _i35;
import '../services/speach_text_service.dart' as _i54;
import '../services/text_speech_service.dart' as _i56;
import 'modules/data_source_module.dart' as _i78;

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
  gh.factory<_i6.AllPtViewModel>(() => _i6.AllPtViewModel());
  gh.factory<_i7.CalendarViewModel>(() => _i7.CalendarViewModel());
  gh.factory<_i8.CaloriesRepositories>(() => _i9.CaloriesRepositoriesImpl());
  gh.factory<_i10.CategoryViewModel>(() => _i10.CategoryViewModel());
  gh.factory<_i11.ChatBotViewModel>(() => _i11.ChatBotViewModel());
  gh.factory<_i12.ChatRepositories>(() => _i13.ChatRepositoriesImpl());
  gh.factory<_i14.CloundinaryService>(() => _i14.CloundinaryService());
  gh.factory<_i15.CreateBotViewModel>(() => _i15.CreateBotViewModel());
  gh.factory<_i16.DashboardViewModel>(() => _i16.DashboardViewModel(gh<int>()));
  gh.factory<_i17.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i18.ExerciseApi>(() => _i18.ExerciseApi(gh<_i17.Dio>()));
  gh.factoryParam<_i19.ExerciseDetailViewModel, int, dynamic>((
    exerciseId,
    _,
  ) =>
      _i19.ExerciseDetailViewModel(exerciseId));
  gh.factory<_i20.ExerciseOverviewViewModel>(
      () => _i20.ExerciseOverviewViewModel());
  gh.singleton<_i21.FCMService>(_i21.FCMService());
  gh.factory<_i22.FitOverViewViewModel>(() => _i22.FitOverViewViewModel());
  gh.factory<_i23.GroupExerciseViewModel>(() => _i23.GroupExerciseViewModel());
  gh.factory<_i24.HealthOverviewViewModel>(
      () => _i24.HealthOverviewViewModel());
  gh.factory<_i25.ImagePicService>(() => _i25.ImagePicService());
  gh.factory<_i26.InputApiCubit>(() => _i26.InputApiCubit());
  gh.factory<_i27.ListNewsViewModel>(() => _i27.ListNewsViewModel());
  gh.factory<_i28.MainChatViewModel>(() => _i28.MainChatViewModel());
  gh.factory<_i29.MessageRepositories>(() => _i30.MessageRepositoriesImpl());
  gh.factory<_i31.NewsApi>(() => _i31.NewsApi(gh<_i17.Dio>()));
  gh.factory<_i32.NewsDetailViewModel>(() => _i32.NewsDetailViewModel());
  gh.factory<_i33.NewsRepositories>(
      () => _i34.NewsRepositoriesImpl(gh<_i31.NewsApi>()));
  gh.singleton<_i35.NotificationService>(_i35.NotificationService());
  gh.factory<_i36.NotificationViewModel>(
      () => _i36.NotificationViewModel(gh<_i36.NotificationState>()));
  gh.factory<_i37.OnboardingViewModel>(() => _i37.OnboardingViewModel());
  gh.factory<_i38.OpenAiApi>(() => _i38.OpenAiApi(gh<_i17.Dio>()));
  gh.factory<_i39.OpenAiRepositories>(
      () => _i40.OpenAiRepositoriesImpl(gh<_i38.OpenAiApi>()));
  gh.factory<_i41.OverviewViewModel>(() => _i41.OverviewViewModel());
  gh.factory<_i42.PlanApi>(() => _i42.PlanApi(gh<_i17.Dio>()));
  gh.factory<_i43.PlanDetailViewModel>(() => _i43.PlanDetailViewModel());
  gh.factory<_i44.PlanOverViewViewModel>(() => _i44.PlanOverViewViewModel());
  gh.factory<_i45.PlanRepositories>(
      () => _i46.PlanRepositoriesImpl(gh<_i42.PlanApi>()));
  gh.factory<_i47.SessionApi>(() => _i47.SessionApi(gh<_i17.Dio>()));
  gh.factoryParam<_i48.SessionPlanViewModel, _i49.DailyWorkout?, dynamic>((
    dailyWorkout,
    _,
  ) =>
      _i48.SessionPlanViewModel(dailyWorkout));
  gh.factory<_i50.SessionRepositories>(
      () => _i51.SessionRepositoriesImpl(gh<_i47.SessionApi>()));
  gh.factory<_i52.SignInViewModel>(() => _i52.SignInViewModel());
  gh.factory<_i53.SignUpViewModel>(() => _i53.SignUpViewModel());
  gh.factory<_i54.SpeechTextService>(() => _i54.SpeechTextService());
  gh.factory<_i55.SplashViewModel>(() => _i55.SplashViewModel());
  gh.factory<_i56.TextSpeechService>(() => _i56.TextSpeechService());
  gh.factory<_i57.TrainerApi>(() => _i57.TrainerApi(gh<_i17.Dio>()));
  gh.factory<_i58.TrainerRepositories>(
      () => _i59.TrainerRepositoriesImpl(gh<_i57.TrainerApi>()));
  gh.factory<_i60.UserApi>(() => _i60.UserApi(gh<_i17.Dio>()));
  gh.factory<_i61.UserRepositories>(
      () => _i62.UserRepositoriesImpl(gh<_i60.UserApi>()));
  gh.factory<_i63.ViewMorePlanViewModel>(() => _i63.ViewMorePlanViewModel());
  gh.factory<_i64.WooTrackViewModel>(() => _i64.WooTrackViewModel());
  gh.factory<_i65.WorkoutPlanApi>(() => _i65.WorkoutPlanApi(gh<_i17.Dio>()));
  gh.factory<_i66.WorkoutPlanRepositories>(
      () => _i67.WorkoutPlanRepositoriesImpl(gh<_i65.WorkoutPlanApi>()));
  gh.factory<_i68.AuthApi>(() => _i68.AuthApi(gh<_i17.Dio>()));
  gh.factory<_i69.AuthRepositories>(
      () => _i70.AuthRepositoriesImpl(gh<_i68.AuthApi>()));
  gh.factory<_i71.DailyPlanApi>(() => _i71.DailyPlanApi(gh<_i17.Dio>()));
  gh.factory<_i72.DailyPlanRepositories>(
      () => _i73.DailyPlanRepositoriesImpl(gh<_i71.DailyPlanApi>()));
  gh.factory<_i74.ExerciseRepositories>(() => _i75.ExerciseRepositoriesImpl(
        gh<_i18.ExerciseApi>(),
        gh<_i47.SessionApi>(),
      ));
  gh.factory<_i76.SettingUseCase>(
      () => _i76.SettingUseCase(gh<_i61.UserRepositories>()));
  gh.factory<_i77.SettingBloc>(
      () => _i77.SettingBloc(gh<_i76.SettingUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i78.DataSourceModule {}
