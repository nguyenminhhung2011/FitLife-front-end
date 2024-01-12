import 'package:fit_life/mvvm/object/entity/workout_plan/workout_plan.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_overview_data.freezed.dart';

@freezed
class PlanOverViewData with _$PlanOverViewData {
  const factory PlanOverViewData({
    WorkoutPlan? currentPlan,
    List<WorkoutPlan>? workoutPlans,
    @Default(false) bool isLoadingWorkoutPlans,
    @Default(false) bool isLoadingCurrentPlan,
    @Default(false) bool isLoadingCreatePlan,
  }) = _PlanOverViewData;
}
