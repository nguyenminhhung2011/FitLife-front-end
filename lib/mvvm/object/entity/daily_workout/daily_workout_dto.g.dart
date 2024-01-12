// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_workout_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailyWorkoutDTO _$$_DailyWorkoutDTOFromJson(Map<String, dynamic> json) =>
    _$_DailyWorkoutDTO(
      name: json['name'] as String,
      description: json['description'] as String,
      time: json['time'] as int?,
    );

Map<String, dynamic> _$$_DailyWorkoutDTOToJson(_$_DailyWorkoutDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'time': instance.time,
    };
