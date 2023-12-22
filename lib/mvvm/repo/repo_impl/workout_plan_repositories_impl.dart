import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/mvvm/data/remote/workout_plan/workout_plan_api.dart';
import 'package:fit_life/mvvm/me/entity/request/search_plan_request.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/add_workout_plan_dto.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';
import 'package:fit_life/mvvm/me/model/workout_plan/search_plan.dart';
import 'package:fit_life/mvvm/me/model/workout_plan/workout_plan_model.dart';
import 'package:fit_life/mvvm/repo/workout_plan_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WorkoutPlanRepositories)
class WorkoutPlanRepositoriesImpl extends BaseApi
    implements WorkoutPlanRepositories {
  final WorkoutPlanApi _workoutPlanApi;
  WorkoutPlanRepositoriesImpl(this._workoutPlanApi);

  @override
  Future<SResult<WorkoutPlan>> addWorkoutPlan({
    required AddWorkoutPlanDto data,
  }) {
    return apiCall<WorkoutPlanModel, WorkoutPlan>(
      mapper: (result) => result.toEntity(),
      request: () async => await _workoutPlanApi.addWorkoutPlan(data.toJson()),
    );
  }

  @override
  Future<SResult<List<WorkoutPlan>?>> getWorkoutPlans() {
    return apiCall<List<WorkoutPlanModel>?, List<WorkoutPlan>?>(
      mapper: (result) => result?.map((e) => e.toEntity()).toList(),
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
  Future<SResult<List<WorkoutPlan>?>> searchWorkoutPlan(
      SearchPlanRequest request) {
    return apiCall<SearchPlan, List<WorkoutPlan>?>(
      mapper: (result) => result.content.map((e) => e.toEntity()).toList(),
      request: () async =>
          await _workoutPlanApi.searchWorkoutPlan(body: request.toJson),
    );
  }
}
