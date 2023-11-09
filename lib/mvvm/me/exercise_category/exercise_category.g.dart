// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseCategory _$$_ExerciseCategoryFromJson(Map<String, dynamic> json) =>
    _$_ExerciseCategory(
      header: json['header'] as String,
      description: json['description'] as String?,
      exCountable: json['exCountable'] as int,
      level: json['level'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_ExerciseCategoryToJson(_$_ExerciseCategory instance) =>
    <String, dynamic>{
      'header': instance.header,
      'description': instance.description,
      'exCountable': instance.exCountable,
      'level': instance.level,
      'image': instance.image,
    };
