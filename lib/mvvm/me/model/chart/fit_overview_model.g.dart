// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fit_overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FitOverviewModel _$FitOverviewModelFromJson(Map<String, dynamic> json) =>
    FitOverviewModel(
      calories: json['calories'] as int,
      todoPercent: (json['todoPercent'] as num).toDouble(),
      chartData: (json['chartData'] as List<dynamic>)
          .map((e) => ChartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FitOverviewModelToJson(FitOverviewModel instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'todoPercent': instance.todoPercent,
      'chartData': instance.chartData,
    };
