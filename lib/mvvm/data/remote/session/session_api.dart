import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/object/entity/custom_exercise/custom_exercise.dart';
import 'package:fit_life/mvvm/object/model/exercise/custom_exercise_model.dart';
import 'package:fit_life/mvvm/object/model/session/session_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'session_api.g.dart';

@RestApi()
@injectable
abstract class SessionApi {
  static const String branch = "/session";
  static const String getAllSessionByDailyApi = "$branch/getall";
  static const String createSessionApi = "$branch/add";
  static const String createExerciseIntoSessionApi = "$branch/add/exercise";
  static const String deleteSessionApi = "$branch/delete";
  static const String getUpComingSessionApi = "$branch/up-coming";
  static const String updateSettingSessionApi =
      "$branch/update-setting-session";

  static const String completeSessionApi = "$branch/complete-session";

  @factoryMethod
  factory SessionApi(Dio dio) = _SessionApi;

  @GET("$getAllSessionByDailyApi?id={id}")
  Future<HttpResponse<List<SessionModel>>> getAllSessionByDaily(
    @Path('id') int id,
  );

  @POST("$completeSessionApi?id={id}")
  Future<HttpResponse<SessionModel>> completeSession(@Path('id') int id);

  @GET("$branch?id={id}")
  Future<HttpResponse<SessionModel>> getSessionById(@Path('id') int id);

  @GET(getUpComingSessionApi)
  Future<HttpResponse<List<SessionModel>>> getUpComingSession();

  @PUT("$updateSettingSessionApi?id={id}")
  Future<HttpResponse<SessionModel>> updateSettingSession(@Path('id') int id,
      {@Body() required Map<String, dynamic> body});

  @POST(createSessionApi)
  Future<HttpResponse<SessionModel>> createSession(
      {@Body() required Map<String, dynamic> body});

  @POST(createExerciseIntoSessionApi)
  Future<HttpResponse<CustomExerciseModel>> createExercise(@Query('id') int id,
      {@Body() required Map<String, dynamic> body});

  @POST("$deleteSessionApi?id={id}")
  Future<HttpResponse> deleteSession(@Path('id') int id);
}
