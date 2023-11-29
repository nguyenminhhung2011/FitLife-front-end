import 'package:fit_life/mvvm/me/entity/user/user_profile_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String username,
    UserProfile? userProfile,
  }) = _User;
}
