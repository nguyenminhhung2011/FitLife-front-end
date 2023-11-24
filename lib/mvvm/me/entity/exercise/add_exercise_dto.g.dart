// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_exercise_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddExerciseDto _$$_AddExerciseDtoFromJson(Map<String, dynamic> json) =>
    _$_AddExerciseDto(
      exercise: Exercise.fromJson(json['exercise'] as Map<String, dynamic>),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      difficulty: json['difficulty'] as String,
      reputation: json['reputation'] as int,
      weights: json['weights'] as int,
    );

Map<String, dynamic> _$$_AddExerciseDtoToJson(_$_AddExerciseDto instance) =>
    <String, dynamic>{
      'exercise': instance.exercise,
      'time': instance.time?.toIso8601String(),
      'difficulty': instance.difficulty,
      'reputation': instance.reputation,
      'weights': instance.weights,
    };
