import 'package:fit_life/mvvm/object/entity/message/message.dart';
import 'package:fit_life/mvvm/object/entity/message/message_type.dart';
import 'package:fit_life/mvvm/object/model/message/message_model.dart';

class MessageResponse {
  final String? threadId;
  final MessageModel? chats;
  MessageResponse(this.threadId, this.chats);

  factory MessageResponse.fromJson(Map<String, dynamic> data) {
    return MessageResponse(
      data["threadId"],
      data["chat"] != null ? MessageModel.fromJson(data["chat"]) : null,
    );
  }
}

class MessageResponseEntity {
  final String threadId;
  final Message chats;
  MessageResponseEntity({required this.threadId, required this.chats});

  factory MessageResponseEntity.fromModel(MessageResponse model) =>
      MessageResponseEntity(
        threadId: model.threadId ?? "",
        chats: model.chats?.toEntity ??
            const Message(
              id: "",
              message: "",
              role: MessageType.user,
            ),
      );
}
