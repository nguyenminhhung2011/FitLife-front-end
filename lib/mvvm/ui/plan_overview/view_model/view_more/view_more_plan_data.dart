import 'package:fit_life/mvvm/object/entity/pagination/pagination.dart';
import 'package:fit_life/mvvm/object/entity/workout_plan/workout_plan.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_more_plan_data.freezed.dart';

@freezed
class ViewMorePlanData with _$ViewMorePlanData {
  const factory ViewMorePlanData({
    String? searchContent,
    DateTime? startDate,
    DateTime? endDate,
    required Pagination<WorkoutPlan> workoutPlans,
  }) = _ViewMorePlanData;
}
