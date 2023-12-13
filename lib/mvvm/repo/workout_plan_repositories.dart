import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';

abstract class WorkoutPlanRepositories {
  Future<SResult<WorkoutPlan>> addWorkoutPlan({
    required WorkoutPlan workoutPlan,
  });

  Future<SResult<List<WorkoutPlan>?>> getWorkoutPlans();

  Future<SResult<List<WorkoutPlan>?>> searchWorkoutPlan(
    String? name, {
    int? startDate,
    int? endDate,
    int? page,
    int? size,
  });

  Future<SResult<void>> removeWorkoutPlan({required int id});
}
