import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/request/search_plan_request.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/add_workout_plan_dto.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';

abstract class WorkoutPlanRepositories {
  Future<SResult<WorkoutPlan>> addWorkoutPlan({
    required AddWorkoutPlanDto data,
  });

  Future<SResult<List<WorkoutPlan>?>> getWorkoutPlans();

  Future<SResult<List<WorkoutPlan>?>> searchWorkoutPlan(
      SearchPlanRequest request);

  Future<SResult<void>> removeWorkoutPlan({required int id});
}
