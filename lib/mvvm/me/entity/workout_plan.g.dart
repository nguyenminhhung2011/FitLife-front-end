// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutPlan _$$_WorkoutPlanFromJson(Map<String, dynamic> json) =>
    _$_WorkoutPlan(
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      planType: $enumDecodeNullable(_$PlanTypeEnumMap, json['planType']) ??
          PlanType.DEFAULT,
      dailyWorkouts: (json['dailyWorkouts'] as List<dynamic>?)
          ?.map((e) => DailyWorkout.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkoutPlanToJson(_$_WorkoutPlan instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'planType': _$PlanTypeEnumMap[instance.planType]!,
      'dailyWorkouts': instance.dailyWorkouts,
    };

const _$PlanTypeEnumMap = {
  PlanType.DEFAULT: 'DEFAULT',
  PlanType.USER: 'USER',
  PlanType.AI: 'AI',
};
