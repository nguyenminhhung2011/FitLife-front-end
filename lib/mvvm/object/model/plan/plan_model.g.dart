// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanModel _$PlanModelFromJson(Map<String, dynamic> json) => PlanModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: json['startDate'] as int,
      endDate: json['endDate'] as int,
      type: json['type'] as String,
      goal: json['goal'] as String,
      totalCaloriesBurn: json['totalCaloriesBurn'] as int,
    );

Map<String, dynamic> _$PlanModelToJson(PlanModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'totalCaloriesBurn': instance.totalCaloriesBurn,
      'type': instance.type,
      'goal': instance.goal,
    };
