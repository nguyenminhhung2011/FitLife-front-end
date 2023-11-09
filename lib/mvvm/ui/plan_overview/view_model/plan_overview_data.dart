import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';
// import 'package:fit_life/mvvm/me/entity/plan/current_plan.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_overview_data.freezed.dart';

@freezed
class PlanOverViewData with _$PlanOverViewData {
  const factory PlanOverViewData({
    // CurrentPlan? currentPlan,
    List<WorkoutPlan>? workoutPlans,
    @Default(false) bool isLoadingWorkoutPlans,
  }) = _PlanOverViewData;
}
