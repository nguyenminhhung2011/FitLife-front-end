import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/calories_chart/calories_chart.dart';
import 'package:fit_life/mvvm/repositories/calories_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CaloriesRepositories)
class CaloriesRepositoriesImpl implements CaloriesRepositories {
  @override
  Future<SResult<CaloriesChart>> getCaloriesChart(
      {required DateTime startDate, required DateTime endTime}) async {
    return Either.right(
      CaloriesChart(
        heartRate: 81,
        todo: 0.325,
        calories: Constant.calories.map((e) => e).toList(),
      ),
    );
  }
}
