import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/mvvm/data/remote/workout_plan/workout_plan_api.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';
import 'package:fit_life/mvvm/repo/workout_plan_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WorkoutPlanRepositories)
class WorkoutPlanRepositoriesImpl extends BaseApi
    implements WorkoutPlanRepositories {
  final WorkoutPlanApi _workoutPlanApi;
  WorkoutPlanRepositoriesImpl(this._workoutPlanApi);

  @override
  Future<SResult<WorkoutPlan>> addWorkoutPlan(
      {required WorkoutPlan workoutPlan}) {
    return apiCall<WorkoutPlan, WorkoutPlan>(
      mapper: (result) => result,
      request: () async =>
          await _workoutPlanApi.addWorkoutPlan(workoutPlan.toJson()),
    );
  }

  @override
  Future<SResult<List<WorkoutPlan>?>> getWorkoutPlans() {
    return apiCall<List<WorkoutPlan>?, List<WorkoutPlan>?>(
      mapper: (result) => result,
      request: () async => await _workoutPlanApi.getAllWorkoutPlan(),
    );
  }

  @override
  Future<SResult<void>> removeWorkoutPlan({required int id}) {
    return apiCall<void, void>(
      mapper: (_) {},
      request: () async => await _workoutPlanApi.removeWorkoutPlan(id),
    );
  }

  @override
  Future<SResult<List<WorkoutPlan>?>> searchWorkoutPlan(String? name,
      {int? startDate, int? endDate, int? page, int? size}) {
    return apiCall<List<WorkoutPlan>?, List<WorkoutPlan>?>(
      mapper: (result) => result,
      request: () async => await _workoutPlanApi.searchWorkoutPlan(
        name,
        startDate: startDate,
        endDate: endDate,
        page: page,
        size: size,
      ),
    );
  }
}
