// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomExercise _$$_CustomExerciseFromJson(Map<String, dynamic> json) =>
    _$_CustomExercise(
      id: json['id'] as int,
      time: json['time'] as int,
      difficulty: json['difficulty'] as String,
      exercise: Exercise.fromJson(json['exercise'] as Map<String, dynamic>),
      rep: json['rep'] as int,
      weight: json['weight'] as int,
      calories: json['calories'] as int,
    );

Map<String, dynamic> _$$_CustomExerciseToJson(_$_CustomExercise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time': instance.time,
      'difficulty': instance.difficulty,
      'exercise': instance.exercise,
      'rep': instance.rep,
      'weight': instance.weight,
      'calories': instance.calories,
    };
