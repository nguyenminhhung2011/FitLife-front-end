import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/object/entity/message/message_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'assistant_api.g.dart';

@RestApi()
@injectable
abstract class AssistantApi {
  static const String branch = "/assistant";
  static const String chat = "$branch/chat";
  static const String streamChat = "$branch/chat-stream";

  @factoryMethod
  factory AssistantApi(Dio dio) = _AssistantApi;

  @POST(chat)
  Future<HttpResponse<MessageResponse>> sendMessageAndCreateThread(
      {@Body() required Map<String, dynamic> body});

  @POST("$chat/{id}")
  Future<HttpResponse<MessageResponse>> sendMessage(@Path("id") String id,
      {@Body() required Map<String, dynamic> body});

  @POST(streamChat)
  Future<HttpResponse<MessageResponse>> sendMessageAndCreateThreadStream(
      {@Body() required Map<String, dynamic> body});

  @POST("$streamChat/{id}")
  Future<HttpResponse<MessageResponse>> sendMessageStream(@Path("id") String id,
      {@Body() required Map<String, dynamic> body});
}
