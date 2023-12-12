import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/me/model/session/session_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'session_api.g.dart';

@RestApi()
@injectable
abstract class SessionApi {
  static const String branch = "/session";
  static const String getAllSessionByDailyApi = "$branch/getall";
  static const String createSessionApi = "$branch/add";
  static const String deleteSessionApi = "$branch/delete";
  static const String getUpComingSessionApi = "$branch/up-coming";

  @factoryMethod
  factory SessionApi(Dio dio) = _SessionApi;

  @GET("$getAllSessionByDailyApi?id={id}")
  Future<HttpResponse<List<SessionModel>>> getAllSessionByDaily(
    @Path('id') int id,
  );

  @GET("$branch?id={id}")
  Future<HttpResponse<SessionModel>> getSessionById(@Path('id') int id);

  @GET(getUpComingSessionApi)
  Future<HttpResponse<List<SessionModel>>> getUpComingSession();

  @POST(createSessionApi)
  Future<HttpResponse<SessionModel>> createSession(
      {@Body() required Map<String, dynamic> body});

  @POST("$deleteSessionApi?id={id}")
  Future<HttpResponse> deleteSession(@Path('id') int id);
}
