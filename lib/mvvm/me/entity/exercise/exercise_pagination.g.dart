// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExercisePagination _$$_ExercisePaginationFromJson(
        Map<String, dynamic> json) =>
    _$_ExercisePagination(
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => ExerciseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExercisePaginationToJson(
        _$_ExercisePagination instance) =>
    <String, dynamic>{
      'content': instance.content,
    };
