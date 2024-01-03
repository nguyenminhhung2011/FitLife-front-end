// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutPlan _$$_WorkoutPlanFromJson(Map<String, dynamic> json) =>
    _$_WorkoutPlan(
      id: json['id'] as int?,
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: json['startDate'] as int?,
      endDate: json['endDate'] as int?,
      type:
          $enumDecodeNullable(_$PlanTypeEnumMap, json['type']) ?? PlanType.def,
      dailyWorkouts: (json['dailyWorkouts'] as List<dynamic>?)
          ?.map((e) => DailyWorkout.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkoutPlanToJson(_$_WorkoutPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'type': _$PlanTypeEnumMap[instance.type]!,
      'dailyWorkouts': instance.dailyWorkouts,
    };

const _$PlanTypeEnumMap = {
  PlanType.user: 'user',
  PlanType.ai: 'ai',
  PlanType.def: 'def',
};
