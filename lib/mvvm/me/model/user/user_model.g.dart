// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      level: json['level'] as int,
      id: json['id'] as String,
      birthDay: json['birthDay'] as int,
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      currentPlant: json['currentPlant'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'birthDay': instance.birthDay,
      'weight': instance.weight,
      'height': instance.height,
      'level': instance.level,
      'currentPlant': instance.currentPlant,
      'gender': instance.gender,
    };
