// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_exercise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomExerciseModel _$CustomExerciseModelFromJson(Map<String, dynamic> json) =>
    CustomExerciseModel(
      id: json['id'] as int?,
      time: json['time'] as int,
      difficulty: json['difficulty'] as String,
      exercise:
          ExerciseModel.fromJson(json['exercise'] as Map<String, dynamic>),
      rep: json['rep'] as int,
      weight: json['weight'] as int,
      calories: json['calories'] as int,
    );

Map<String, dynamic> _$CustomExerciseModelToJson(
        CustomExerciseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time': instance.time,
      'difficulty': instance.difficulty,
      'exercise': instance.exercise,
      'rep': instance.rep,
      'weight': instance.weight,
      'calories': instance.calories,
    };
