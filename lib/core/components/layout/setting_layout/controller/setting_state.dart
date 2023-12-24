part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const SettingState._();
  const factory SettingState.initial({required SettingModalState data}) =
      _Initial;
  const factory SettingState.loading({
    required SettingModalState data,
    @Default(0) int loadingType,
  }) = _Loading;

  const factory SettingState.updateAppearanceSuccess(
      {required SettingModalState data}) = _UpdateAppearanceSuccess;

  const factory SettingState.updateCurrenciesSuccess(
      {required SettingModalState data}) = _UpdateCurrenciesSuccess;

  const factory SettingState.updateLangCodeSuccess(
      {required SettingModalState data}) = _UpdateLangCodeSuccess;

  const factory SettingState.getUserSuccess({
    required SettingModalState data,
  }) = _GetUserSuccess;

  const factory SettingState.logOutSuccess({
    required SettingModalState data,
  }) = _LogOutSuccess;

  const factory SettingState.getUserFailed({
    required SettingModalState data,
    required String message,
  }) = _GetUserFailed;

  const factory SettingState.updatePassCodeSuccess({
    required SettingModalState data,
  }) = _UpdatePassCodeSuccess;

  const factory SettingState.removePassCodeSuccess({
    required SettingModalState data,
  }) = _RemovePassCodeSuccess;

  const factory SettingState.changePasswordSuccess({
    required SettingModalState data,
  }) = _ChangePasswordSuccess;

  const factory SettingState.changePasswordFailed(
      {required SettingModalState data,
      required String message}) = _ChangePasswordFailed;

  const factory SettingState.addFavoriteExerciseSuccess({
    required SettingModalState data,
  }) = _AddFavoriteExerciseSuccess;

  const factory SettingState.addFavoriteExerciseFailed(
      {required SettingModalState data,
      required String message}) = _AddFavoriteExerciseFailed;

  const factory SettingState.addFavoriteNewsSuccess({
    required SettingModalState data,
  }) = _AddFavoriteNewsSuccess;

  const factory SettingState.addFavoriteNewsFailed(
      {required SettingModalState data,
      required String message}) = _AddFavoriteNewsFailed;

  const factory SettingState.getCurrentPlanSuccess({
    required SettingModalState data,
  }) = _GetCurrentPlanSuccess;

  const factory SettingState.getCurrentPlanFailed(
      {required SettingModalState data,
      required String message}) = _GetCurrentPlanFailed;

  const factory SettingState.changeCurrentPlanSuccess({
    required SettingModalState data,
  }) = _ChangeCurrentPlanSuccess;

  const factory SettingState.changeCurrentPlanFailed(
      {required SettingModalState data,
      required String message}) = _ChangeCurrentPlanFailed;

  bool get isLoading => maybeWhen(
      orElse: () => false, loading: (_, loadingType) => loadingType == 0);
}
