import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/mvvm/data/remote/daily_plan/daily_plan_api.dart';
import 'package:fit_life/mvvm/object/entity/daily_workout/daily_workout.dart';
import 'package:fit_life/mvvm/object/entity/daily_workout/daily_workout_dto.dart';
import 'package:fit_life/mvvm/repositories/daily_plan_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DailyPlanRepositories)
class DailyPlanRepositoriesImpl extends BaseApi
    implements DailyPlanRepositories {
  final DailyPlanApi _dailyPlanApi;
  DailyPlanRepositoriesImpl(this._dailyPlanApi);

  @override
  Future<SResult<DailyWorkout>> addDailyPlan({
    required DailyWorkoutDTO dto,
    required int id,
  }) {
    return apiCall<DailyWorkout, DailyWorkout>(
      mapper: (result) => result,
      request: () async => await _dailyPlanApi.addDailyPlan(
        id,
        dto.toJson(),
      ),
    );
  }

  @override
  Future<SResult<List<DailyWorkout>?>> getDailyPlanByWorkoutPlanId(
      {required int id}) {
    return apiCall<List<DailyWorkout>?, List<DailyWorkout>?>(
      mapper: (result) => result,
      request: () async => await _dailyPlanApi.getDailyPlanById(id),
    );
  }

  @override
  Future<SResult<void>> removeDailyPlan({required int id}) {
    return apiCall<void, void>(
      mapper: (_) {},
      request: () async => await _dailyPlanApi.removeDailyPlan(id),
    );
  }
}
