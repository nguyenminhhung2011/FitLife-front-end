import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/plan/current_plan.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';

abstract class PlanRepositories {
  Future<SResult<CurrentPlan>> getCurrentPlan();

  Future<SResult<List<WorkoutPlan>>> fetchPlanByFilter({
    required String content,
    required DateTime timeStart,
    required DateTime timeFinish,
    required int currentPage,
  });
}
