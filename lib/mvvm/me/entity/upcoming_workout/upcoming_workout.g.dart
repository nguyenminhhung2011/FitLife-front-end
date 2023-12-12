// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpcomingWorkout _$$_UpcomingWorkoutFromJson(Map<String, dynamic> json) =>
    _$_UpcomingWorkout(
      startTime: DateTime.parse(json['startTime'] as String),
      title: json['title'] as String,
      description: json['description'] as String?,
      image: json['image'] as String?,
      minutes: json['minutes'] as int?,
      kCalo: json['kCalo'] as int?,
      enableNotification: json['enableNotification'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UpcomingWorkoutToJson(_$_UpcomingWorkout instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'minutes': instance.minutes,
      'kCalo': instance.kCalo,
      'enableNotification': instance.enableNotification,
    };
