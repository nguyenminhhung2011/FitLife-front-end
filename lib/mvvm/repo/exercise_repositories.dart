import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';

abstract class ExerciseRepositories {
  Future<SResult<List<ExerciseCategory>>> getExerciseCategories(
      {required int currentPage, required int perPage});

  Future<SResult<List<ExerciseCategory>>> getAllExerciseCategories();

  Future<SResult<List<Exercise>>> getExerciseByFilter({
    String? content,
    String? category,
    int currentPage = 0,
    int perPage = 5,
  });
}
