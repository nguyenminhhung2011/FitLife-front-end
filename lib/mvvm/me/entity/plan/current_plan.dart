import 'package:fit_life/core/components/enum/plan_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_plan.freezed.dart';

@freezed
class CurrentPlan with _$CurrentPlan {
  const factory CurrentPlan({
    required String id,
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    required int totalCaloriesBurn,
    required PlanType type,
    required String goal,
  }) = _CurrentPlan;
}
