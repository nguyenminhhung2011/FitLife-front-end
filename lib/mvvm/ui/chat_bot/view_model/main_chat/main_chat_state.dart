part of 'main_chat_view_model.dart';

@freezed
class MainChatState with _$MainChatState {
  const MainChatState._();
  const factory MainChatState.initial({required MainChatData data}) = _Initial;
  const factory MainChatState.changeTabSuccess({required MainChatData data}) =
      _ChangeTabSuccess;
  const factory MainChatState.changeChatFocus({required MainChatData data}) =
      _ChangeChatFocus;

  const factory MainChatState.loading({required MainChatData data}) = _Loading;

  const factory MainChatState.getChatThreadSuccess(
      {required MainChatData data}) = _GetChatThreadSuccess;

  const factory MainChatState.getChatThreadFailed(
      {required MainChatData data,
      required String message}) = _GetChatThreadFailed;

  bool get loading => this is _Loading;
}
