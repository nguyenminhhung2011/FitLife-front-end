import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/exercise/add_exercise_dto.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/me/model/search_exercise/search_exercise_request.dart';

abstract class ExerciseRepositories {
  Future<SResult<List<BodyPart>>> getExerciseCategories(
      {required int currentPage, required int perPage});

  Future<SResult<List<BodyPart>>> getAllExerciseCategories();

  Future<SResult<List<Exercise>>> getExerciseByFilter({
    String? content,
    String? category,
    int currentPage = 0,
    int perPage = 5,
  });

  Future<SResult<bool>> createExercise({
    required AddExerciseDto dto,
  });

  Future<SResult<List<Exercise>>> searchExercise(SearchExerciseRequest request);
}
