import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';

abstract class ExerciseRepositories {
  Future<SResult<List<ExerciseCategory>>> getExerciseCategories(
      {required int currentPage, required int perPage});
}
