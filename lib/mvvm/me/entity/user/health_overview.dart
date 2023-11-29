import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_overview.freezed.dart';

@freezed
class HealthOverview with _$HealthOverview {
  const factory HealthOverview({
    int? weight,
    int? height,
    bool? isMale,
    int? targetWeight,
    int? duration,
  }) = _HealthOverview;
}

extension HealthOverviewMerge on HealthOverview {
  HealthOverview merge(HealthOverview other) {
    return HealthOverview(
      weight: other.weight ?? weight,
      height: other.height ?? height,
      isMale: other.isMale ?? isMale,
      targetWeight: other.targetWeight ?? targetWeight,
      duration: other.duration ?? duration,
    );
  }
}
