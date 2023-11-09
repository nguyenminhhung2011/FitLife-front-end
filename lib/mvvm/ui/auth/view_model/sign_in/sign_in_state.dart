part of 'sign_in_view_model.dart';

@freezed
class SignInState with _$SignInState {
  const SignInState._();

  const factory SignInState.initial({required SignInData data}) = _Initial;
  const factory SignInState.loading({required SignInData data}) = _Loading;
  const factory SignInState.signInSuccess({required SignInData data}) =
      _SignInSuccess;
  const factory SignInState.signInFailed(
      {required SignInData data, required String message}) = _SignInFailed;

  const factory SignInState.inValidFormat({required SignInData data}) =
      _InvalidFormat;

  bool get loading => this is _Loading;
  bool get isInValidFormat => this is _InvalidFormat;
}
