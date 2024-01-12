import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/calories_chart/calories_chart.dart';

abstract class CaloriesRepositories {
  Future<SResult<CaloriesChart>> getCaloriesChart({
    required DateTime startDate,
    required DateTime endTime,
  });
}
