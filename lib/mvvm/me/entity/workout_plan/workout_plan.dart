import 'package:fit_life/core/components/enum/plan_type.dart';
import 'package:fit_life/mvvm/me/entity/daily_workout/daily_workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_plan.freezed.dart';
part 'workout_plan.g.dart';

@freezed
class WorkoutPlan with _$WorkoutPlan {
  const factory WorkoutPlan({
    int? id,
    required String name,
    required String description,
    int? startDate,
    int? endDate,
    @Default(PlanType.def) PlanType type,
    List<DailyWorkout>? dailyWorkouts,
  }) = _WorkoutPlan;

  factory WorkoutPlan.fromJson(Map<String, dynamic> json) =>
      _$WorkoutPlanFromJson(json);
}
