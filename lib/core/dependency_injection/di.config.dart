// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../clean_architectures/domain/usecase/setting/setting_usecase.dart'
    as _i75;
import '../../mvvm/data/remote/auth/auth_api.dart' as _i66;
import '../../mvvm/data/remote/chat_thread/chat_thread_api.dart' as _i69;
import '../../mvvm/data/remote/daily_plan/daily_plan_api.dart' as _i70;
import '../../mvvm/data/remote/exercise/exercise_api.dart' as _i16;
import '../../mvvm/data/remote/news_health/news_api.dart' as _i29;
import '../../mvvm/data/remote/open_ai/open_ai_api.dart' as _i36;
import '../../mvvm/data/remote/plan/plan_api.dart' as _i40;
import '../../mvvm/data/remote/session/session_api.dart' as _i45;
import '../../mvvm/data/remote/trainer/trainer_api.dart' as _i55;
import '../../mvvm/data/remote/user/user_api.dart' as _i58;
import '../../mvvm/data/remote/workout_plan/workout_plan_api.dart' as _i63;
import '../../mvvm/object/entity/daily_workout/daily_workout.dart' as _i47;
import '../../mvvm/repositories/auth_repositories.dart' as _i67;
import '../../mvvm/repositories/calories_repositories.dart' as _i8;
import '../../mvvm/repositories/chat_repositories.dart' as _i76;
import '../../mvvm/repositories/daily_plan_repositories.dart' as _i71;
import '../../mvvm/repositories/exercise_repositories.dart' as _i73;
import '../../mvvm/repositories/implements/auth_repositories_impl.dart' as _i68;
import '../../mvvm/repositories/implements/calories_repositories_impl.dart'
    as _i9;
import '../../mvvm/repositories/implements/chat_repositories_impl.dart' as _i77;
import '../../mvvm/repositories/implements/daily_plan_repositories_impl.dart'
    as _i72;
import '../../mvvm/repositories/implements/exercise_repositories_impl.dart'
    as _i74;
import '../../mvvm/repositories/implements/message_repositories_impl.dart'
    as _i28;
import '../../mvvm/repositories/implements/news_repositories_impl.dart' as _i32;
import '../../mvvm/repositories/implements/open_ai_repositories_impl.dart'
    as _i38;
import '../../mvvm/repositories/implements/plan_repositories_impl.dart' as _i44;
import '../../mvvm/repositories/implements/session_repositories_impl.dart'
    as _i49;
import '../../mvvm/repositories/implements/trainer_repositories_impl.dart'
    as _i57;
import '../../mvvm/repositories/implements/user_repositories_impl.dart' as _i60;
import '../../mvvm/repositories/implements/workout_plan_repositories_impl.dart'
    as _i65;
import '../../mvvm/repositories/message_repositories.dart' as _i27;
import '../../mvvm/repositories/news_repositories.dart' as _i31;
import '../../mvvm/repositories/open_ai_repositories.dart' as _i37;
import '../../mvvm/repositories/plan_repositories.dart' as _i43;
import '../../mvvm/repositories/session_repositories.dart' as _i48;
import '../../mvvm/repositories/trainer_repositories.dart' as _i56;
import '../../mvvm/repositories/user_repositories.dart' as _i59;
import '../../mvvm/repositories/workout_plan_repositories.dart' as _i64;
import '../../mvvm/ui/all_exercise/view_model/all_exercise_view_model.dart'
    as _i5;
import '../../mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart' as _i50;
import '../../mvvm/ui/auth/view_model/sign_up/sign_up_view_model.dart' as _i51;
import '../../mvvm/ui/calendar/view_model/calendar_view_model.dart' as _i7;
import '../../mvvm/ui/category/view_model/category_view_model.dart' as _i10;
import '../../mvvm/ui/chat_bot/view_model/all_chat/all_chat_view_model.dart'
    as _i4;
import '../../mvvm/ui/chat_bot/view_model/all_pt/all_pt_view_model.dart' as _i6;
import '../../mvvm/ui/chat_bot/view_model/api_key/input_api_cubit.dart' as _i24;
import '../../mvvm/ui/chat_bot/view_model/chat_bot/chat_bot_view_model.dart'
    as _i11;
import '../../mvvm/ui/chat_bot/view_model/create_bot/create_bot_view_model.dart'
    as _i13;
import '../../mvvm/ui/chat_bot/view_model/main_chat/main_chat_view_model.dart'
    as _i26;
import '../../mvvm/ui/dashboard/view_model/dashboard_view_model.dart' as _i14;
import '../../mvvm/ui/execise_detail/view_model/exercise_detail_view_model.dart'
    as _i17;
import '../../mvvm/ui/exercise_schedule/view_model/add_exercise/add_exercise_view_model.dart'
    as _i3;
import '../../mvvm/ui/exercise_schedule/view_model/exercise_overview/exercise_overview_view_model.dart'
    as _i18;
import '../../mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart'
    as _i20;
import '../../mvvm/ui/health_overview/view_model/health_overview_view_model.dart'
    as _i22;
import '../../mvvm/ui/list_news/view_model/list_news_view_model.dart' as _i25;
import '../../mvvm/ui/news_detail/view_model/news_detail_view_model.dart'
    as _i30;
import '../../mvvm/ui/notification/view_model/notification_view_model.dart'
    as _i34;
import '../../mvvm/ui/onboarding/view_model/onboarding_view_model.dart' as _i35;
import '../../mvvm/ui/overview/view_model/overview_view_model.dart' as _i39;
import '../../mvvm/ui/plan_detail/view_model/plan_detail_view_model.dart'
    as _i41;
import '../../mvvm/ui/plan_overview/view_model/plan_overview/plan_overview_view_model.dart'
    as _i42;
import '../../mvvm/ui/plan_overview/view_model/view_more/view_more_plan_view_model.dart'
    as _i61;
import '../../mvvm/ui/recommend_plan/view_model/group_exercise_view_model.dart'
    as _i21;
import '../../mvvm/ui/session_plan/view_model/session_plan_view_model.dart'
    as _i46;
import '../../mvvm/ui/splash/view_model/splash_view_model.dart' as _i53;
import '../../mvvm/ui/wo_trac/view_model/wo_trac_view_model.dart' as _i62;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i78;
import '../services/cloundinary_service.dart' as _i12;
import '../services/fcm/fcm_service.dart' as _i19;
import '../services/image_pic_service.dart' as _i23;
import '../services/notification_service.dart' as _i33;
import '../services/speach_text_service.dart' as _i52;
import '../services/text_speech_service.dart' as _i54;
import 'modules/data_source_module.dart' as _i79;

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
  gh.factory<_i12.CloundinaryService>(() => _i12.CloundinaryService());
  gh.factory<_i13.CreateBotViewModel>(() => _i13.CreateBotViewModel());
  gh.factory<_i14.DashboardViewModel>(() => _i14.DashboardViewModel(gh<int>()));
  gh.factory<_i15.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i16.ExerciseApi>(() => _i16.ExerciseApi(gh<_i15.Dio>()));
  gh.factoryParam<_i17.ExerciseDetailViewModel, int, dynamic>((
    exerciseId,
    _,
  ) =>
      _i17.ExerciseDetailViewModel(exerciseId));
  gh.factory<_i18.ExerciseOverviewViewModel>(
      () => _i18.ExerciseOverviewViewModel());
  gh.singleton<_i19.FCMService>(_i19.FCMService());
  gh.factory<_i20.FitOverViewViewModel>(() => _i20.FitOverViewViewModel());
  gh.factory<_i21.GroupExerciseViewModel>(() => _i21.GroupExerciseViewModel());
  gh.factory<_i22.HealthOverviewViewModel>(
      () => _i22.HealthOverviewViewModel());
  gh.factory<_i23.ImagePicService>(() => _i23.ImagePicService());
  gh.factory<_i24.InputApiCubit>(() => _i24.InputApiCubit());
  gh.factory<_i25.ListNewsViewModel>(() => _i25.ListNewsViewModel());
  gh.factory<_i26.MainChatViewModel>(() => _i26.MainChatViewModel());
  gh.factory<_i27.MessageRepositories>(() => _i28.MessageRepositoriesImpl());
  gh.factory<_i29.NewsApi>(() => _i29.NewsApi(gh<_i15.Dio>()));
  gh.factory<_i30.NewsDetailViewModel>(() => _i30.NewsDetailViewModel());
  gh.factory<_i31.NewsRepositories>(
      () => _i32.NewsRepositoriesImpl(gh<_i29.NewsApi>()));
  gh.singleton<_i33.NotificationService>(_i33.NotificationService());
  gh.factory<_i34.NotificationViewModel>(
      () => _i34.NotificationViewModel(gh<_i34.NotificationState>()));
  gh.factory<_i35.OnboardingViewModel>(() => _i35.OnboardingViewModel());
  gh.factory<_i36.OpenAiApi>(() => _i36.OpenAiApi(gh<_i15.Dio>()));
  gh.factory<_i37.OpenAiRepositories>(
      () => _i38.OpenAiRepositoriesImpl(gh<_i36.OpenAiApi>()));
  gh.factory<_i39.OverviewViewModel>(() => _i39.OverviewViewModel());
  gh.factory<_i40.PlanApi>(() => _i40.PlanApi(gh<_i15.Dio>()));
  gh.factory<_i41.PlanDetailViewModel>(() => _i41.PlanDetailViewModel());
  gh.factory<_i42.PlanOverViewViewModel>(() => _i42.PlanOverViewViewModel());
  gh.factory<_i43.PlanRepositories>(
      () => _i44.PlanRepositoriesImpl(gh<_i40.PlanApi>()));
  gh.factory<_i45.SessionApi>(() => _i45.SessionApi(gh<_i15.Dio>()));
  gh.factoryParam<_i46.SessionPlanViewModel, _i47.DailyWorkout?, dynamic>((
    dailyWorkout,
    _,
  ) =>
      _i46.SessionPlanViewModel(dailyWorkout));
  gh.factory<_i48.SessionRepositories>(
      () => _i49.SessionRepositoriesImpl(gh<_i45.SessionApi>()));
  gh.factory<_i50.SignInViewModel>(() => _i50.SignInViewModel());
  gh.factory<_i51.SignUpViewModel>(() => _i51.SignUpViewModel());
  gh.factory<_i52.SpeechTextService>(() => _i52.SpeechTextService());
  gh.factory<_i53.SplashViewModel>(() => _i53.SplashViewModel());
  gh.factory<_i54.TextSpeechService>(() => _i54.TextSpeechService());
  gh.factory<_i55.TrainerApi>(() => _i55.TrainerApi(gh<_i15.Dio>()));
  gh.factory<_i56.TrainerRepositories>(
      () => _i57.TrainerRepositoriesImpl(gh<_i55.TrainerApi>()));
  gh.factory<_i58.UserApi>(() => _i58.UserApi(gh<_i15.Dio>()));
  gh.factory<_i59.UserRepositories>(
      () => _i60.UserRepositoriesImpl(gh<_i58.UserApi>()));
  gh.factory<_i61.ViewMorePlanViewModel>(() => _i61.ViewMorePlanViewModel());
  gh.factory<_i62.WooTrackViewModel>(() => _i62.WooTrackViewModel());
  gh.factory<_i63.WorkoutPlanApi>(() => _i63.WorkoutPlanApi(gh<_i15.Dio>()));
  gh.factory<_i64.WorkoutPlanRepositories>(
      () => _i65.WorkoutPlanRepositoriesImpl(gh<_i63.WorkoutPlanApi>()));
  gh.factory<_i66.AuthApi>(() => _i66.AuthApi(gh<_i15.Dio>()));
  gh.factory<_i67.AuthRepositories>(
      () => _i68.AuthRepositoriesImpl(gh<_i66.AuthApi>()));
  gh.factory<_i69.ChatThreadApi>(() => _i69.ChatThreadApi(gh<_i15.Dio>()));
  gh.factory<_i70.DailyPlanApi>(() => _i70.DailyPlanApi(gh<_i15.Dio>()));
  gh.factory<_i71.DailyPlanRepositories>(
      () => _i72.DailyPlanRepositoriesImpl(gh<_i70.DailyPlanApi>()));
  gh.factory<_i73.ExerciseRepositories>(() => _i74.ExerciseRepositoriesImpl(
        gh<_i16.ExerciseApi>(),
        gh<_i45.SessionApi>(),
      ));
  gh.factory<_i75.SettingUseCase>(
      () => _i75.SettingUseCase(gh<_i59.UserRepositories>()));
  gh.factory<_i76.ChatRepositories>(
      () => _i77.ChatRepositoriesImpl(gh<_i69.ChatThreadApi>()));
  gh.factory<_i78.SettingBloc>(
      () => _i78.SettingBloc(gh<_i75.SettingUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i79.DataSourceModule {}
