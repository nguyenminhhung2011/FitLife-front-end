import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/me/model/user/user_model.dart';
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

  @factoryMethod
  factory UserApi(Dio dio) = _UserApi;

  @GET(getMyProfileApi)
  Future<HttpResponse<UserModel?>> getMyProfile();

  @PUT(updateUserProfileApi)
  Future<HttpResponse<UserModel?>> updateUserProfile(
      {@Body() required Map<String, dynamic> body});

  @PUT("$addFavoriteExerciseApi/{id}")
  Future<HttpResponse> addFavoriteExercise(@Path("id") int id);

  @PATCH(changePasswordApi)
  Future<HttpResponse> changePassword(
      {@Body() required Map<String, dynamic> body});
}
