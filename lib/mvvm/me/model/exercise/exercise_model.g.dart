// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExerciseModel _$ExerciseModelFromJson(Map<String, dynamic> json) =>
    ExerciseModel(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      exerciseCategory: json['exerciseCategory'] as String?,
      caloriesPerMinute: (json['caloriesPerMinute'] as num?)?.toDouble(),
      sets: json['sets'] as int?,
      reps: json['reps'] as int?,
      target: json['target'] as String,
      gifUrl: json['gifUrl'] as String,
      equipment: json['equipment'] as String?,
      bodyPart: json['bodyPart'] as String,
      instructions: (json['instructions'] as List<dynamic>?)
          ?.map((e) => Instruction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExerciseModelToJson(ExerciseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'exerciseCategory': instance.exerciseCategory,
      'caloriesPerMinute': instance.caloriesPerMinute,
      'sets': instance.sets,
      'reps': instance.reps,
      'target': instance.target,
      'gifUrl': instance.gifUrl,
      'equipment': instance.equipment,
      'bodyPart': instance.bodyPart,
      'instructions': instance.instructions,
    };
