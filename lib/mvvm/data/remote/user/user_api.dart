import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/me/model/user/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'user_api.g.dart';

@injectable
@RestApi()
abstract class UserApi {
  static const String branch = "";
  static const String getMyProfileApi = "/user/me";
  static const String updateUserProfileApi = "/user/update-profile";
  static const String changePasswordApi = "/user/change-password";

  @factoryMethod
  factory UserApi(Dio dio) = _UserApi;

  @GET(getMyProfileApi)
  Future<HttpResponse<UserModel?>> getMyProfile();

  @PUT(updateUserProfileApi)
  Future<HttpResponse<UserModel?>> updateUserProfile(
      {@Body() required Map<String, dynamic> body});

  @PATCH(changePasswordApi)
  Future<HttpResponse> changePassword(
      {@Body() required Map<String, dynamic> body});
}
