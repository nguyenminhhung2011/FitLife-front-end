// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlanDetail _$$_PlanDetailFromJson(Map<String, dynamic> json) =>
    _$_PlanDetail(
      name: json['name'] as String?,
      description: json['description'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      progress: (json['progress'] as num?)?.toDouble(),
      dailyWorkouts: (json['dailyWorkouts'] as List<dynamic>?)
          ?.map((e) => DailyWorkout.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlanDetailToJson(_$_PlanDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'progress': instance.progress,
      'dailyWorkouts': instance.dailyWorkouts,
    };
