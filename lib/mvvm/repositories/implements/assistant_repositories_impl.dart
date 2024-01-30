import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/mvvm/data/remote/assistant/assistant_api.dart';
import 'package:fit_life/mvvm/object/entity/message/message.dart';
import 'package:fit_life/mvvm/object/entity/message/message_response.dart';
import 'package:fit_life/mvvm/object/entity/message/message_type.dart';
import 'package:fit_life/mvvm/repositories/assistant_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AssistantRepositories)
class AssistantRepositoriesImpl extends BaseApi
    implements AssistantRepositories {
  final AssistantApi _assistantApi;
  AssistantRepositoriesImpl(this._assistantApi);

  @override
  Future<SResult<Message>> sendMessage(
          {required String message, required String id}) async =>
      await apiCall<MessageResponse, Message>(
        mapper: (result) =>
            result.chats?.toEntity ??
            Message(id: "", message: message, role: MessageType.user),
        request: () async => await _assistantApi.sendMessage(id, body: {
          "messages": [message]
        }),
      );

  @override
  Future<SResult<MessageResponseEntity>> sendMessageAndCreate(
          String message) async =>
      await apiCall<MessageResponse, MessageResponseEntity>(
        mapper: (result) => MessageResponseEntity.fromModel(result),
        request: () async =>
            await _assistantApi.sendMessageAndCreateThread(body: {
          "messages": [message]
        }),
      );

  @override
  Future<SResult<MessageResponseEntity>> sendMessageAndCreateStream(
          String message) async =>
      await apiCall<MessageResponse, MessageResponseEntity>(
        mapper: (result) => MessageResponseEntity.fromModel(result),
        request: () async =>
            await _assistantApi.sendMessageAndCreateThreadStream(body: {
          "messages": [message]
        }),
      );

  @override
  Future<SResult<Message>> sendMessageStream(
          {required String message, required String id}) async =>
      await apiCall<MessageResponse, Message>(
        mapper: (result) =>
            result.chats?.toEntity ??
            Message(id: "", message: message, role: MessageType.user),
        request: () async => await _assistantApi.sendMessageStream(id, body: {
          "messages": [message]
        }),
      );
}
