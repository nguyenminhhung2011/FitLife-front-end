import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/object/entity/message/message_response.dart';
import 'package:fit_life/mvvm/object/model/trainer/trainer_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'trainer_api.g.dart';

@injectable
@RestApi()
abstract class TrainerApi {
  static const String branch = "/trainer";
  static const String trainerApi = branch;
  static const String trainerChatApi = "$branch/chat";

  @factoryMethod
  factory TrainerApi(Dio dio) = _TrainerApi;

  @GET(trainerApi)
  Future<HttpResponse<List<TrainerModel>?>> getAllTrainer();

  @DELETE("$trainerApi/{id}")
  Future<HttpResponse> deleteTrainer(@Path("id") String id);

  @POST(trainerApi)
  Future<HttpResponse<TrainerModel?>> createTrainer(
      {@Body() required Map<String, dynamic> body});

  @GET("$trainerApi/{id}")
  Future<HttpResponse<TrainerModel?>> getTrainerById(@Path("id") String id);

  @PUT("$trainerApi/{id}")
  Future<HttpResponse<TrainerModel?>> updateTrainer(@Path("id") String id,
      {@Body() required Map<String, dynamic> body});

  @POST(trainerChatApi)
  Future<HttpResponse<MessageResponse>> sendAndCreateThreadTrainer(
      {@Body() required Map<String, dynamic> body});
}
