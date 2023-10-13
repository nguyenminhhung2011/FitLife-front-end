import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_data.freezed.dart';

@freezed
class SignInData with _$SignInData {
  const factory SignInData({
    String? emailError,
    String? passwordError,
  }) = _SignInData;
}
