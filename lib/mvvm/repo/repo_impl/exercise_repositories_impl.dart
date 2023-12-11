import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/mvvm/data/remote/exercise/exercise_api.dart';
import 'package:fit_life/mvvm/me/entity/exercise/add_exercise_dto.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/me/model/body_part/body_part_model.dart';
import 'package:fit_life/mvvm/me/model/exercise/exercise_model.dart';
import 'package:fit_life/mvvm/me/model/search_exercise/search_exercise_request.dart';
import 'package:fit_life/mvvm/me/model/search_exercise/search_exercise_response.dart';
import 'package:fit_life/mvvm/repo/exercise_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ExerciseRepositories)
class ExerciseRepositoriesImpl extends BaseApi implements ExerciseRepositories {
  final ExerciseApi _exerciseApi;
  ExerciseRepositoriesImpl(this._exerciseApi);

  @override
  Future<SResult<List<BodyPart>>> getExerciseCategories(
          {required int currentPage, required int perPage}) async =>
      await apiCall<List<BodyPartModel>, List<BodyPart>>(
        mapper: (result) {
          final startIndex = currentPage * perPage;
          if (result.length > startIndex + perPage) {
            return result
                .map((e) => e.toEntity)
                .toList()
                .sublist(startIndex, startIndex + perPage);
          }
          return List.empty();
        },
        request: () async => await _exerciseApi.getBodyPart(),
      );

  @override
  Future<SResult<List<BodyPart>>> getAllExerciseCategories() async =>
      await apiCall<List<BodyPartModel>, List<BodyPart>>(
        mapper: (result) => result.map((e) => e.toEntity).toList(),
        request: () async => await _exerciseApi.getBodyPart(),
      );

  @override
  Future<SResult<bool>> createExercise({
    required AddExerciseDto dto,
  }) async {
    return const Either.right(true);
  }

  @override
  Future<SResult<List<Exercise>>> searchExercise(
          SearchExerciseRequest request) async =>
      await apiCall<SearchExerciseResponse, List<Exercise>>(
        mapper: (result) => result.content.map((e) => e.toEntity).toList(),
        request: () async =>
            await _exerciseApi.searchExercise(body: request.toJson),
      );

  @override
  Future<SResult<Exercise>> getExerciseById(int exerciseId) async =>
      await apiCall<ExerciseModel, Exercise>(
        mapper: (result) => result.toEntity,
        request: () async => await _exerciseApi.getExerciseById(exerciseId),
      );
}
