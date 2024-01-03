import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/object/model/user/user_model.dart';
import 'package:fit_life/mvvm/object/model/workout_plan/workout_plan_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'user_api.g.dart';

@injectable
@RestApi()
abstract class UserApi {
  static const String branch = "/user";
  static const String getMyProfileApi = "$branch/me";
  static const String updateUserProfileApi = "$branch/update-profile";
  static const String changePasswordApi = "$branch/change-password";
  static const String addFavoriteExerciseApi = "$branch/exercise-favorite";
  static const String addFavoriteNewsApi = "$branch/news-favorite";
  static const String changeCurrentPlanApi = "$branch/change-current-plan";
  static const String getCurrentPlanApi = "$branch/current-plan";

  @factoryMethod
  factory UserApi(Dio dio) = _UserApi;

  @GET(getMyProfileApi)
  Future<HttpResponse<UserModel?>> getMyProfile();

  @PUT(updateUserProfileApi)
  Future<HttpResponse<UserModel?>> updateUserProfile(
      {@Body() required Map<String, dynamic> body});

  @PUT("$addFavoriteExerciseApi/{id}")
  Future<HttpResponse> addFavoriteExercise(@Path("id") int id);

  @PUT("$addFavoriteNewsApi/{id}")
  Future<HttpResponse> addFavoriteNews(@Path("id") int id);

  @PUT("$changeCurrentPlanApi/{id}")
  Future<HttpResponse<WorkoutPlanModel>> changeCurrentPlan(@Path("id") int id);

  @GET(getCurrentPlanApi)
  Future<HttpResponse<WorkoutPlanModel>> getCurrentPlan();

  @PATCH(changePasswordApi)
  Future<HttpResponse> changePassword(
      {@Body() required Map<String, dynamic> body});
}
