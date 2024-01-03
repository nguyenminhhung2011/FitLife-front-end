// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Exercise _$$_ExerciseFromJson(Map<String, dynamic> json) => _$_Exercise(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      bodyPart: json['bodyPart'] as String?,
      caloriesPerMinute: (json['caloriesPerMinute'] as num?)?.toDouble(),
      videoUrl: json['videoUrl'] as String?,
      target: json['target'] as String?,
      equipment: json['equipment'] as String?,
      set: json['set'] as int?,
      reps: json['reps'] as int?,
      instructions: (json['instructions'] as List<dynamic>?)
          ?.map((e) => Instruction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExerciseToJson(_$_Exercise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'bodyPart': instance.bodyPart,
      'caloriesPerMinute': instance.caloriesPerMinute,
      'videoUrl': instance.videoUrl,
      'target': instance.target,
      'equipment': instance.equipment,
      'set': instance.set,
      'reps': instance.reps,
      'instructions': instance.instructions,
    };
