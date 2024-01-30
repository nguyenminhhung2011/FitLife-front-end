import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/mvvm/object/entity/chat/chat_thread.dart';
import 'package:fit_life/mvvm/object/entity/message/message.dart';
import 'package:fit_life/mvvm/object/entity/trainer/trainer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_bot_data.freezed.dart';

@freezed
class ChatBotData with _$ChatBotData {
  const factory ChatBotData({
    ChatThread? chatThread,
    required List<Message> messages,
    List<Trainer>? allPreTrainer,
    List<Trainer>? previewTrainer,
    @Default(false) bool micAvailable,
    @Default("") String messageSpeechId,
    @Default(Constant.defaultTrainer) Trainer trainerSelected,
  }) = _ChatBotData;
}
