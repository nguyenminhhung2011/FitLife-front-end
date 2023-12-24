part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.started() = _Started;
  const factory SettingEvent.updateAppearance() = _UpdateAppearance;
  const factory SettingEvent.updateLangCode({
    required String langCode,
  }) = _UpdateLangCode;

  const factory SettingEvent.logOut() = _LogOut;

  const factory SettingEvent.getUserInfo() = _GetUserInfo;

  const factory SettingEvent.updateCurrencies({
    required Currencies currencies,
  }) = _UpdateCurrencies;

  const factory SettingEvent.changePassword(
      {required ChangePassword changePass}) = _ChangePassword;

  const factory SettingEvent.updatePassCode({
    required String newPassCode,
  }) = _UpdatePassCode;

  const factory SettingEvent.addFavoriteExercise(Exercise exercise) =
      _AddFavoriteExercise;

  const factory SettingEvent.addFavoriteNews(NewsHealth newsHealth) =
      _AddFavoriteNews;

  const factory SettingEvent.changeCurrentPlan(int newId) = _ChangeCurrentPlan;

  const factory SettingEvent.getCurrentPlan() = _GetCurrentPlan;

  const factory SettingEvent.removePassCoe() = _RemovePassCode;
}
