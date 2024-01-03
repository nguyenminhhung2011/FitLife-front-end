// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    UserProfileModel(
      id: json['id'] as int,
      birthDay: json['birthDay'] as int?,
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      gender: json['gender'] as String?,
      created: json['created'] as bool,
      currentPlanId: json['currentPlanId'] as int?,
      level: json['level'] as String?,
      currentPlan: json['currentPlan'] as String?,
      phone: json['phone'] as String?,
      frequency: json['frequency'] as String?,
      favoriteExercises: (json['favoriteExercises'] as List<dynamic>?)
          ?.map((e) => ExerciseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      favoriteNews: (json['favoriteNews'] as List<dynamic>?)
          ?.map((e) => NewsHealthModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserProfileModelToJson(UserProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'birthDay': instance.birthDay,
      'currentPlanId': instance.currentPlanId,
      'weight': instance.weight,
      'height': instance.height,
      'level': instance.level,
      'currentPlan': instance.currentPlan,
      'phone': instance.phone,
      'frequency': instance.frequency,
      'gender': instance.gender,
      'created': instance.created,
      'favoriteExercises': instance.favoriteExercises,
      'favoriteNews': instance.favoriteNews,
    };
