import 'package:fit_life/mvvm/object/entity/user/user_entity.dart';
import 'package:fit_life/mvvm/object/model/user/user_profile_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'username')
  final String userName;

  @JsonKey(name: 'userProfile')
  final UserProfileModel? userProfile;

  UserModel({
    required this.id,
    required this.userName,
    this.userProfile,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  User get toEntity =>
      User(id: id, username: userName, userProfile: userProfile?.toEntity);
}
