// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchPlan _$SearchPlanFromJson(Map<String, dynamic> json) => SearchPlan(
      content: (json['content'] as List<dynamic>)
          .map((e) => WorkoutPlanModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchPlanToJson(SearchPlan instance) =>
    <String, dynamic>{
      'content': instance.content,
    };
