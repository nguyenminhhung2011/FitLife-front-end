part of 'main_chat_view_model.dart';

@freezed
class MainChatState with _$MainChatState {
  const factory MainChatState.initial({required MainChatData data}) = _Initial;
  const factory MainChatState.changeTabSuccess({required MainChatData data}) =
      _ChangeTabSuccess;
  const factory MainChatState.changeChatFocus({required MainChatData data}) =
      _ChangeChatFocus;
}
