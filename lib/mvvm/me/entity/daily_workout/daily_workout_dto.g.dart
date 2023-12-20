// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_workout_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailyWorkoutDTO _$$_DailyWorkoutDTOFromJson(Map<String, dynamic> json) =>
    _$_DailyWorkoutDTO(
      name: json['name'] as String,
      description: json['description'] as String,
      caloTarget: (json['caloTarget'] as num?)?.toDouble(),
      time: json['time'] as int?,
      workoutDuration: json['workoutDuration'] as int?,
      numberRound: json['numberRound'] as int?,
      execPerRound: json['execPerRound'] as int?,
      timeForEachExe: json['timeForEachExe'] as int?,
      breakTime: json['breakTime'] as int?,
    );

Map<String, dynamic> _$$_DailyWorkoutDTOToJson(_$_DailyWorkoutDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'caloTarget': instance.caloTarget,
      'time': instance.time,
      'workoutDuration': instance.workoutDuration,
      'numberRound': instance.numberRound,
      'execPerRound': instance.execPerRound,
      'timeForEachExe': instance.timeForEachExe,
      'breakTime': instance.breakTime,
    };
