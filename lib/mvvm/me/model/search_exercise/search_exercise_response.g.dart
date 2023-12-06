// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_exercise_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchExerciseResponse _$SearchExerciseResponseFromJson(
        Map<String, dynamic> json) =>
    SearchExerciseResponse(
      content: (json['content'] as List<dynamic>)
          .map((e) => ExerciseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      last: json['last'] as bool,
      totalElements: json['totalElements'] as int,
      totalPages: json['totalPages'] as int,
      size: json['size'] as int,
      first: json['first'] as bool,
      numberOfElements: json['numberOfElements'] as int,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$SearchExerciseResponseToJson(
        SearchExerciseResponse instance) =>
    <String, dynamic>{
      'content': instance.content,
      'last': instance.last,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'size': instance.size,
      'first': instance.first,
      'numberOfElements': instance.numberOfElements,
      'empty': instance.empty,
    };
