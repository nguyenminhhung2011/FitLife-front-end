part of 'all_chat_view_model.dart';

@freezed
class AllChatState with _$AllChatState {
  const AllChatState._();
  factory AllChatState.initial({required AllChatData data}) = _Initial;
  factory AllChatState.loading({required AllChatData data}) = _Loading;
  factory AllChatState.getAllChatSuccess({required AllChatData data}) =
      _GetAllChatSuccess;
  factory AllChatState.getAllChatFailed(
      {required AllChatData data, required String message}) = _GetAllChatFailed;

  bool get loading => this is _Loading;
}
