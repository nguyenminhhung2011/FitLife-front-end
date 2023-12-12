// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionModel _$SessionModelFromJson(Map<String, dynamic> json) => SessionModel(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      startWithBoot: json['startWithBoot'] as bool?,
      randomMix: json['randomMix'] as bool?,
      timePerLesson: json['timePerLesson'] as int?,
      transferTime: json['transferTime'] as int?,
      calcTarget: json['calcTarget'] as int?,
      numberRound: json['numberRound'] as int?,
      breakTime: json['breakTime'] as int?,
      level: json['level'] as String?,
      customExercise: (json['customExercise'] as List<dynamic>?)
          ?.map((e) => CustomExerciseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SessionModelToJson(SessionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
      'description': instance.description,
      'startWithBoot': instance.startWithBoot,
      'randomMix': instance.randomMix,
      'timePerLesson': instance.timePerLesson,
      'transferTime': instance.transferTime,
      'calcTarget': instance.calcTarget,
      'numberRound': instance.numberRound,
      'breakTime': instance.breakTime,
      'customExercise': instance.customExercise,
    };
