import 'package:fit_life/mvvm/object/entity/chart/chart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chart_model.g.dart';

@JsonSerializable()
class ChartModel {
  @JsonKey(name: 'calories')
  final int calories;

  @JsonKey(name: 'time')
  final int time;

  ChartModel({required this.calories, required this.time});

  factory ChartModel.fromJson(Map<String, dynamic> json) =>
      _$ChartModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChartModelToJson(this);

  Chart get toEntity => Chart(
      calories: calories, time: DateTime.fromMillisecondsSinceEpoch(time));
}
