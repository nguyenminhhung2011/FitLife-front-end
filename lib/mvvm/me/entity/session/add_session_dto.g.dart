// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_session_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddSessionDTO _$$_AddSessionDTOFromJson(Map<String, dynamic> json) =>
    _$_AddSessionDTO(
      dailyWorkouts: json['dailyWorkouts'] as int?,
      startWithBoot: json['startWithBoot'] as bool?,
      randomMix: json['randomMix'] as bool?,
      timePerLesson: json['timePerLesson'] as int?,
      transferTime: json['transferTime'] as int?,
      calcTarget: json['calcTarget'] as int?,
      description: json['description'] as String?,
      name: json['name'] as String?,
      numberRound: json['numberRound'] as int?,
      breakTime: json['breakTime'] as int?,
      level: json['level'] as String?,
    );

Map<String, dynamic> _$$_AddSessionDTOToJson(_$_AddSessionDTO instance) =>
    <String, dynamic>{
      'dailyWorkouts': instance.dailyWorkouts,
      'startWithBoot': instance.startWithBoot,
      'randomMix': instance.randomMix,
      'timePerLesson': instance.timePerLesson,
      'transferTime': instance.transferTime,
      'calcTarget': instance.calcTarget,
      'description': instance.description,
      'name': instance.name,
      'numberRound': instance.numberRound,
      'breakTime': instance.breakTime,
      'level': instance.level,
    };
