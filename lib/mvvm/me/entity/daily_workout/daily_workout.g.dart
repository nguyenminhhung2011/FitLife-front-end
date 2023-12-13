// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailyWorkout _$$_DailyWorkoutFromJson(Map<String, dynamic> json) =>
    _$_DailyWorkout(
      name: json['name'] as String,
      description: json['description'] as String,
      totalMinute: json['totalMinute'] as int?,
      caloTarget: (json['caloTarget'] as num?)?.toDouble(),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      workoutDuration: json['workoutDuration'] as int?,
      numberRound: json['numberRound'] as int?,
      execPerRound: json['execPerRound'] as int?,
      timeForEachExe: json['timeForEachExe'] as int?,
      breakTime: json['breakTime'] as int?,
      sessions: (json['sessions'] as List<dynamic>?)
          ?.map((e) => Session.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DailyWorkoutToJson(_$_DailyWorkout instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'totalMinute': instance.totalMinute,
      'caloTarget': instance.caloTarget,
      'time': instance.time?.toIso8601String(),
      'workoutDuration': instance.workoutDuration,
      'numberRound': instance.numberRound,
      'execPerRound': instance.execPerRound,
      'timeForEachExe': instance.timeForEachExe,
      'breakTime': instance.breakTime,
      'sessions': instance.sessions,
    };
