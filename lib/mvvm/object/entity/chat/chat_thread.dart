import 'package:fit_life/mvvm/object/entity/message/message.dart';
import 'package:fit_life/mvvm/object/entity/trainer/trainer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_thread.freezed.dart';

@freezed
class ChatThread with _$ChatThread {
  const factory ChatThread({
    required String id,
    required String title,
    List<Message>? chats,
    String? openAiThreadId,
    DateTime? createdAt,
    Trainer? trainer,
  }) = _ChatThread;
}
