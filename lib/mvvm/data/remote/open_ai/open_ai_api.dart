import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'open_ai_api.g.dart';

@RestApi()
@injectable
abstract class OpenAiApi {
  static const String branch = "/open-ai";
  static const String setApi = "$branch/token";

  @factoryMethod
  factory OpenAiApi(Dio dio) = _OpenAiApi;

  @GET(branch)
  Future<HttpResponse<String?>> getOpenAiApi();

  @POST(setApi)
  Future<HttpResponse> setOpenAiApi(
      {@Body() required Map<String, dynamic> body});
}
