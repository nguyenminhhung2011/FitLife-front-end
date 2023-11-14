// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Session _$$_SessionFromJson(Map<String, dynamic> json) => _$_Session(
      id: json['id'] as String,
      dwId: json['dwId'] as String,
      description: json['description'] as String?,
      name: json['name'] as String?,
      calcTarget: json['calcTarget'] as int?,
      time: json['time'] as int?,
      exercises: (json['exercises'] as List<dynamic>?)
          ?.map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SessionToJson(_$_Session instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dwId': instance.dwId,
      'description': instance.description,
      'name': instance.name,
      'calcTarget': instance.calcTarget,
      'time': instance.time,
      'exercises': instance.exercises,
    };
