part of 'create_bot_view_model.dart';

@freezed
class CreateBotState with _$CreateBotState {
  const factory CreateBotState.initial({required CreateBotData data}) =
      _Initial;

  const factory CreateBotState.changeBotImageSuccess(
      {required CreateBotData data}) = _ChangeBotImageSuccess;

  const factory CreateBotState.changeBehaviorTabSuccess(
      {required CreateBotData data}) = _ChangeBehaviorTabSuccess;

  const factory CreateBotState.changeModelSuccess(
      {required CreateBotData data}) = _ChangeModelSuccess;

  const factory CreateBotState.changeSourceFileSuccess(
      {required CreateBotData data}) = _ChangeSourceFileSuccess;
}
  