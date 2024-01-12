import 'package:fit_life/mvvm/object/entity/message/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_bot_data.freezed.dart';

@freezed
class ChatBotData with _$ChatBotData {
  const factory ChatBotData({
    required List<Message> messages,
    @Default(false) bool micAvailable,
    @Default("") String messageSpeechId,
  }) = _ChatBotData;
}
