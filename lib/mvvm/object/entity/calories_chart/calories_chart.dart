
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calories_chart.freezed.dart';

@freezed
class CaloriesChart with _$CaloriesChart {
  const factory CaloriesChart({
    required List<int> calories,
    required int heartRate,
    required double todo,
  }) = _CaloriesChart;
}
