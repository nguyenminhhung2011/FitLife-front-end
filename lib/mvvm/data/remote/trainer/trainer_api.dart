import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

part 'trainer_api.g.dart';

@injectable
abstract class TrainerApi {
  static const String branch = "/trainer";
  static const String trainerApi = branch;
  static const String trainerChatApi = "$branch/chat";

  @factoryMethod
  factory TrainerApi(Dio dio) = _TrainerApi;


}
