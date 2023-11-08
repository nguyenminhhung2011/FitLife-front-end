import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/plan/current_plan.dart';

abstract class PlanRepositories {
  Future<SResult<CurrentPlan>> getCurrentPlan();
}
