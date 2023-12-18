// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkoutPlanModel _$WorkoutPlanModelFromJson(Map<String, dynamic> json) =>
    WorkoutPlanModel(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: json['startDate'] as int?,
      endDate: json['endDate'] as int?,
      type: json['type'] as String?,
      dailyWorkouts: (json['dailyWorkouts'] as List<dynamic>?)
          ?.map((e) => DailyWorkout.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorkoutPlanModelToJson(WorkoutPlanModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'type': instance.type,
      'dailyWorkouts': instance.dailyWorkouts,
    };
