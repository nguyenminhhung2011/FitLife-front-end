import 'package:fit_life/mvvm/me/entity/daily_workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_plan.freezed.dart';
part 'workout_plan.g.dart';

@freezed
class WorkoutPlan with _$WorkoutPlan {
  const factory WorkoutPlan({
    required String name,
    required String description,
    DateTime? startDate,
    DateTime? endDate,
    @Default(PlanType.DEFAULT) PlanType planType,
    List<DailyWorkout>? dailyWorkouts,
  }) = _WorkoutPlan;

  factory WorkoutPlan.fromJson(Map<String, dynamic> json) =>
      _$WorkoutPlanFromJson(json);
}

enum PlanType {
  DEFAULT,
  USER,
  AI,
}
