// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpcomingWorkout _$$_UpcomingWorkoutFromJson(Map<String, dynamic> json) =>
    _$_UpcomingWorkout(
      title: json['title'] as String,
      description: json['description'] as String?,
      startTime: DateTime.parse(json['startTime'] as String),
      minutes: json['minutes'] as int?,
      kCalo: json['kCalo'] as int?,
      image: json['image'] as String?,
      enableNotification: json['enableNotification'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UpcomingWorkoutToJson(_$_UpcomingWorkout instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'startTime': instance.startTime.toIso8601String(),
      'minutes': instance.minutes,
      'kCalo': instance.kCalo,
      'image': instance.image,
      'enableNotification': instance.enableNotification,
    };
