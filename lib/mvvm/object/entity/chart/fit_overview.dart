import 'package:fit_life/mvvm/object/entity/chart/chart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fit_overview.freezed.dart';

@freezed
class FitOverview with _$FitOverview {
  const factory FitOverview({
    required int calories,
    required double todoPercent,
    required List<Chart> chartData,
  }) = _FitOverview;
}
