
part of 'sign_up_view_model.dart';


@freezed
class SignUpState with _$SignUpState {
  const SignUpState._();
  
  const factory SignUpState.initial({required SignUpData data}) = _Initial;
  const factory SignUpState.invalidFormat({required SignUpData data}) = _InvalidFormat;
  const factory SignUpState.loading({required SignUpData data}) = _Loading;
  const factory SignUpState.signUpSuccess({required SignUpData data}) = _SignUpSuccess;
  const factory SignUpState.signUpFailed({required SignUpData data, required String message}) = _SignUpFailed;

  bool get isInValidFormat => this is _InvalidFormat;

}