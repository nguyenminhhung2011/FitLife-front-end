// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_schedule_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpcomingScheduleExercise _$$_UpcomingScheduleExerciseFromJson(
        Map<String, dynamic> json) =>
    _$_UpcomingScheduleExercise(
      minutes: json['minutes'] as int?,
      image: json['image'] as String?,
      endAt: json['endAt'] == null
          ? null
          : DateTime.parse(json['endAt'] as String),
      startAt: json['startAt'] == null
          ? null
          : DateTime.parse(json['startAt'] as String),
      exercises: (json['exercises'] as List<dynamic>?)
          ?.map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_UpcomingScheduleExerciseToJson(
        _$_UpcomingScheduleExercise instance) =>
    <String, dynamic>{
      'minutes': instance.minutes,
      'image': instance.image,
      'endAt': instance.endAt?.toIso8601String(),
      'startAt': instance.startAt?.toIso8601String(),
      'exercises': instance.exercises,
      'title': instance.title,
      'description': instance.description,
    };
