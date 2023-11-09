// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_schedule_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpcomingScheduleExercise _$$_UpcomingScheduleExerciseFromJson(
        Map<String, dynamic> json) =>
    _$_UpcomingScheduleExercise(
      startAt: json['startAt'] == null
          ? null
          : DateTime.parse(json['startAt'] as String),
      endAt: json['endAt'] == null
          ? null
          : DateTime.parse(json['endAt'] as String),
      title: json['title'] as String,
      description: json['description'] as String,
      minutes: json['minutes'] as int?,
      exercises: (json['exercises'] as List<dynamic>?)
          ?.map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_UpcomingScheduleExerciseToJson(
        _$_UpcomingScheduleExercise instance) =>
    <String, dynamic>{
      'startAt': instance.startAt?.toIso8601String(),
      'endAt': instance.endAt?.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'minutes': instance.minutes,
      'exercises': instance.exercises,
      'image': instance.image,
    };
