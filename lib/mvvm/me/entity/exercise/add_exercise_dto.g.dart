// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_exercise_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddExerciseDto _$$_AddExerciseDtoFromJson(Map<String, dynamic> json) =>
    _$_AddExerciseDto(
      exercise: json['exercise'] as int,
      difficulty: json['difficulty'] as String,
      rep: json['rep'] as int,
      weight: json['weight'] as int,
    );

Map<String, dynamic> _$$_AddExerciseDtoToJson(_$_AddExerciseDto instance) =>
    <String, dynamic>{
      'exercise': instance.exercise,
      'difficulty': instance.difficulty,
      'rep': instance.rep,
      'weight': instance.weight,
    };
