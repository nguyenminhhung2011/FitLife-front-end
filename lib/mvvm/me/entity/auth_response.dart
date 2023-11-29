import 'package:fit_life/mvvm/me/model/user/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_response.g.dart';
part 'auth_response.freezed.dart';

@freezed
class AuthenticateResponse with _$AuthenticateResponse {
  const factory AuthenticateResponse({
    @Default("") String jwt,
    @Default("") String refreshToken,
    UserModel? user,
  }) = _AuthenticateResponse;

  factory AuthenticateResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateResponseFromJson(json);
}
