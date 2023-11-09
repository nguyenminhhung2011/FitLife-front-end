// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Session _$$_SessionFromJson(Map<String, dynamic> json) => _$_Session(
      dailyWorkout: json['dailyWorkout'] == null
          ? null
          : DailyWorkout.fromJson(json['dailyWorkout'] as Map<String, dynamic>),
      exercises: (json['exercises'] as List<dynamic>?)
          ?.map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SessionToJson(_$_Session instance) =>
    <String, dynamic>{
      'dailyWorkout': instance.dailyWorkout,
      'exercises': instance.exercises,
    };
