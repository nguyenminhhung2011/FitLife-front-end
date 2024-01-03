import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/chart/fit_overview.dart';
import 'package:fit_life/mvvm/object/entity/plan/add_plan_dto.dart';
import 'package:fit_life/mvvm/object/entity/plan/current_plan.dart';
import 'package:fit_life/mvvm/object/entity/plan_detail/plan_detail.dart';
import 'package:fit_life/mvvm/object/entity/request/get_chart_request.dart';
import 'package:fit_life/mvvm/object/entity/workout_plan/workout_plan.dart';

abstract class PlanRepositories {
  Future<SResult<CurrentPlan>> getCurrentPlan();

  Future<SResult<List<WorkoutPlan>>> fetchPlanByFilter({
    required String content,
    required DateTime timeStart,
    required DateTime timeFinish,
    required int currentPage,
    required int perPage,
  });

  Future<SResult<List<WorkoutPlan>>> getTopPlan({int topCountable = 2});

  Future<SResult<WorkoutPlan>> createPlan({required AddPlanDto plan});

  Future<SResult<PlanDetail>> getDetailPlan({required String id});

  Future<SResult<FitOverview>> getChartView(
      {required GetChartRequest getChartRequest});
}
