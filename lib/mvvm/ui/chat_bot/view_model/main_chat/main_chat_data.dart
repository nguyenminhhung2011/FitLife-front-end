import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_chat_data.freezed.dart';

@freezed
class MainChatData with _$MainChatData {
  const factory MainChatData({
    @Default(0) int currentTab,
    String? currentChatId,
  }) = _MainChatData;
}
