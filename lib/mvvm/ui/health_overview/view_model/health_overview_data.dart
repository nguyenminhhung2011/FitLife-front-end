import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_overview_data.freezed.dart';

@freezed
class HealthOverviewData with _$HealthOverviewData {
  const factory HealthOverviewData({
    @Default(50) int weight,
    @Default(50) int height,
    @Default(true) bool isMale,
    @Default(50) int targetWeight,
    @Default(1) int duration,
  }) = _HealthOverviewData;
}
