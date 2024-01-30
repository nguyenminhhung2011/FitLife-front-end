import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/message/message.dart';
import 'package:fit_life/mvvm/object/entity/message/message_response.dart';

abstract class AssistantRepositories {
  Future<SResult<Message>> sendMessage(
      {required String message, required String id});
  Future<SResult<Message>> sendMessageStream(
      {required String message, required String id});
  Future<SResult<MessageResponseEntity>> sendMessageAndCreate(String message);
  Future<SResult<MessageResponseEntity>> sendMessageAndCreateStream(String message);
}
