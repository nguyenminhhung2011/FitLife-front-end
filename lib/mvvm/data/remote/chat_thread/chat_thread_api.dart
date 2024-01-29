import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/object/model/chat_thread/chat_thread_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'chat_thread_api.g.dart';

@RestApi()
@injectable
abstract class ChatThreadApi {
  static const String branch = "/thread-chat";

  @factoryMethod
  factory ChatThreadApi(Dio dio) = _ChatThreadApi;

  @GET(branch)
  Future<HttpResponse<List<ChatThreadModel>>> getThreadByUser();

  @GET("$branch/{id}")
  Future<HttpResponse<ChatThreadModel>> getThreadById(@Path("id") String id);

  @DELETE("$branch/{id}")
  Future<HttpResponse> deleteThread(@Path("id") String id);

  @POST(branch)
  Future<HttpResponse<ChatThreadModel>> createThread(
      {@Body() required Map<String, dynamic> body});
}
