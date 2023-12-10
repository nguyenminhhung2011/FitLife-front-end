import 'package:fit_life/core/components/enum/plan_type.dart';
import 'package:fit_life/mvvm/me/entity/daily_workout/daily_workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_plan.freezed.dart';

@freezed
class WorkoutPlan with _$WorkoutPlan {
  const factory WorkoutPlan({
    required String name,
    required String description,
    DateTime? startDate,
    DateTime? endDate,
    @Default(PlanType.def) PlanType planType,
    List<DailyWorkout>? dailyWorkouts,
  }) = _WorkoutPlan;
}
