import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/daily_workout/daily_workout.dart';
import 'package:fit_life/mvvm/me/entity/daily_workout/daily_workout_dto.dart';

abstract class DailyPlanRepositories {
  Future<SResult<DailyWorkout>> addDailyPlan({
    required DailyWorkoutDTO dto,
    required int id,
  });

  Future<SResult<List<DailyWorkout>?>> getDailyPlanByWorkoutPlanId({
    required int id,
  });

  Future<SResult<void>> removeDailyPlan({
    required int id,
  });
}
