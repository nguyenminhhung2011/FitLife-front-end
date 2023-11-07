import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_data.freezed.dart';

@freezed
class SignUpData with _$SignUpData {
  const factory SignUpData({
    String? emailError,
    String? passwordError,
  }) = _SignUpData;
}
