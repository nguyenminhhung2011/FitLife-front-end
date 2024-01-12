import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/custom_exercise/custom_exercise.dart';
import 'package:fit_life/mvvm/object/entity/exercise/add_exercise_dto.dart';
import 'package:fit_life/mvvm/object/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/object/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/object/entity/request/search_exercise_request.dart';

abstract class ExerciseRepositories {
  Future<SResult<List<BodyPart>>> getExerciseCategories(
      {required int currentPage, required int perPage});

  Future<SResult<List<BodyPart>>> getAllExerciseCategories();

  Future<SResult<CustomExercise>> createExercise(
    int sessionId, {
    required AddExerciseDto dto,
  });

  Future<SResult<List<Exercise>>> searchExercise(SearchExerciseRequest request);

  Future<SResult<Exercise>> getExerciseById(int exerciseId);

  Future<SResult<List<Exercise>>> getExercisesPagination(int page, int perPage);
}
