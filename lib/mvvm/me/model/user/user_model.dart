import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'birthDay')
  final int birthDay;

  @JsonKey(name: 'weight')
  final double weight;

  @JsonKey(name: 'height')
  final double height;

  @JsonKey(name: 'level')
  final int level;

  @JsonKey(name: 'currentPlant')
  final String currentPlant;

  @JsonKey(name: 'gender')
  final String gender;

  UserModel({
    required this.level,
    required this.id,
    required this.birthDay,
    required this.weight,
    required this.height,
    required this.currentPlant,
    required this.gender,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
