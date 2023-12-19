import 'package:fit_life/mvvm/me/entity/chart/fit_overview.dart';
import 'package:fit_life/mvvm/me/model/chart/chart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fit_overview_model.g.dart';

@JsonSerializable()
class FitOverviewModel {
  @JsonKey(name: 'calories')
  final int calories;

  @JsonKey(name: 'todoPercent')
  final double todoPercent;

  @JsonKey(name: 'chartData')
  final List<ChartModel> chartData;

  FitOverviewModel(
      {required this.calories,
      required this.todoPercent,
      required this.chartData});

  factory FitOverviewModel.fromJson(Map<String, dynamic> json) =>
      _$FitOverviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$FitOverviewModelToJson(this);

  FitOverview get toEntity => FitOverview(
        calories: calories,
        todoPercent: todoPercent,
        chartData: chartData.map((e) => e.toEntity).toList(),
      );
}
