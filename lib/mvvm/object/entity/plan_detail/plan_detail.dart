import 'package:fit_life/mvvm/object/entity/daily_workout/daily_workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_detail.freezed.dart';

@freezed
class PlanDetail with _$PlanDetail {
  const factory PlanDetail({
    String? name,
    String? description,
    DateTime? startDate,
    DateTime? endDate,
    double? progress,
    double? caloTarget,
    List<DailyWorkout>? dailyWorkouts,
  }) = _PlanDetail;
}
