// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_workout_plan_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddWorkoutPlanDto _$$_AddWorkoutPlanDtoFromJson(Map<String, dynamic> json) =>
    _$_AddWorkoutPlanDto(
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: json['startDate'] as int?,
      endDate: json['endDate'] as int?,
      type: json['type'] as String? ?? "DEFAULT",
      preference: json['preference'] as String?,
      fitnessLevelCurrent:
          $enumDecodeNullable(_$LevelEnumMap, json['fitnessLevelCurrent']),
      fitnessGoal: json['fitnessGoal'] as String?,
    );

Map<String, dynamic> _$$_AddWorkoutPlanDtoToJson(
        _$_AddWorkoutPlanDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'type': instance.type,
      'preference': instance.preference,
      'fitnessLevelCurrent': _$LevelEnumMap[instance.fitnessLevelCurrent],
      'fitnessGoal': instance.fitnessGoal,
    };

const _$LevelEnumMap = {
  Level.beginner: 'beginner',
  Level.intermediate: 'intermediate',
  Level.advanced: 'advanced',
  Level.hard: 'hard',
};
