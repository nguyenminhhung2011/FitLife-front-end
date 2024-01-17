part of 'chat_bot_view_model.dart';

@freezed
class ChatBotState with _$ChatBotState {
  const ChatBotState._();
  const factory ChatBotState.initial({required ChatBotData data}) = _Initial;

  const factory ChatBotState.loading({required ChatBotData data}) = _Loading;

  const factory ChatBotState.loadingMessage({required ChatBotData data}) =
      _LoadingMessage;

  const factory ChatBotState.getAllMessageSuccess({required ChatBotData data}) =
      _GetAllMessageSuccess;

  const factory ChatBotState.getAllMessageFailed({
    required ChatBotData data,
    required String message,
  }) = _GetAllMessageFailed;

  const factory ChatBotState.sendMessageSuccess({required ChatBotData data}) =
      _SendMessageSuccess;

  const factory ChatBotState.sendMessageFailed({
    required ChatBotData data,
    required String message,
  }) = _SendMessageFailed;

  const factory ChatBotState.listeningSpeech({
    required ChatBotData data,
    required String textResponse,
  }) = _ListeningSpeech;

  const factory ChatBotState.stopListening({required ChatBotData data}) =
      _StopListening;

  const factory ChatBotState.initialSpeechSuccess({required ChatBotData data}) =
      _InitialSpeechSuccess;

  const factory ChatBotState.speechText({required ChatBotData data}) =
      _SpeechText;

  const factory ChatBotState.stopSpeech({required ChatBotData data}) =
      _StopSpeech;

  const factory ChatBotState.clearConversationSuccess(
      {required ChatBotData data}) = _ClearConversationSuccess;

  const factory ChatBotState.clearConversationFailed({
    required ChatBotData data,
    required String message,
  }) = _ClearConversationFailed;

  const factory ChatBotState.deleteMessageSuccess({required ChatBotData data}) =
      _DeleteMessageSuccess;

  const factory ChatBotState.deleteMessageFailed({
    required ChatBotData data,
    required String message,
  }) = _DeleteMessageFailed;

  const factory ChatBotState.getChatThreadSuccess({required ChatBotData data}) =
      _GetChatThreadSuccess;

  const factory ChatBotState.getChatThreadFailed({
    required ChatBotData data,
    required String message,
  }) = _GetChatThreadFailed;

  const factory ChatBotState.createChatThreadSuccess(
      {required ChatBotData data}) = _CreateChatThreadSuccess;

  const factory ChatBotState.createChatThreadFailed({
    required ChatBotData data,
    required String message,
  }) = _CreateChatThreadFailed;

  bool get loading => this is _Loading;

  bool get loadingMessage => this is _LoadingMessage;

  bool get listeningSpeech => this is _ListeningSpeech;

  bool get speechText => this is _SpeechText;
}
