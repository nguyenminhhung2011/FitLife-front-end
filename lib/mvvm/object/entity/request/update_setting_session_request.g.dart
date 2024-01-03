// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_setting_session_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateSettingSessionRequest _$UpdateSettingSessionRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateSettingSessionRequest(
      startWithBoot: json['startWithBoot'] as bool,
      randomMix: json['randomMix'] as bool,
      timePerLesson: json['timePerLesson'] as int,
      transferTime: json['transferTime'] as int,
      calcTarget: json['calcTarget'] as int,
      description: json['description'] as String,
      name: json['name'] as String,
      numberRound: json['numberRound'] as int,
      breakTime: json['breakTime'] as int,
      level: json['level'] as String,
    );

Map<String, dynamic> _$UpdateSettingSessionRequestToJson(
        UpdateSettingSessionRequest instance) =>
    <String, dynamic>{
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
