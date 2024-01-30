import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/mvvm/data/remote/exercise/exercise_api.dart';
import 'package:fit_life/mvvm/data/remote/session/session_api.dart';
import 'package:fit_life/mvvm/object/entity/custom_exercise/custom_exercise.dart';
import 'package:fit_life/mvvm/object/entity/exercise/add_exercise_dto.dart';
import 'package:fit_life/mvvm/object/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/object/entity/exercise/exercise_pagination.dart';
import 'package:fit_life/mvvm/object/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/object/model/body_part/body_part_model.dart';
import 'package:fit_life/mvvm/object/model/exercise/custom_exercise_model.dart';
import 'package:fit_life/mvvm/object/model/exercise/exercise_model.dart';
import 'package:fit_life/mvvm/object/entity/request/search_exercise_request.dart';
import 'package:fit_life/mvvm/object/model/search_exercise/search_exercise_response.dart';
import 'package:fit_life/mvvm/repositories/exercise_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ExerciseRepositories)
class ExerciseRepositoriesImpl extends BaseApi implements ExerciseRepositories {
  final ExerciseApi _exerciseApi;
  final SessionApi _sessionApi;
  ExerciseRepositoriesImpl(
    this._exerciseApi,
    this._sessionApi,
  );

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
  Future<SResult<CustomExercise>> createExercise(
    int sessionId, {
    required AddExerciseDto dto,
  }) async {
    return await apiCall<CustomExerciseModel, CustomExercise>(
      mapper: (result) => result.toEntity,
      request: () async =>
          await _sessionApi.createExercise(sessionId, body: dto.toJson()),
    );
  }

  @override
  Future<SResult<List<Exercise>>> searchExercise(
          SearchExerciseRequest request) async =>
      await apiCall<SearchExerciseResponse, List<Exercise>>(
        mapper: (result) => result.content.map((e) => e.toEntity).toList(),
        request: () async {
          await Future.delayed(const Duration(seconds: 1));
          return await _exerciseApi.searchExercise(body: request.toJson);
        },
      );

  @override
  Future<SResult<Exercise>> getExerciseById(int exerciseId) async =>
      await apiCall<ExerciseModel, Exercise>(
        mapper: (result) => result.toEntity,
        request: () async => await _exerciseApi.getExerciseById(exerciseId),
      );

  @override
  Future<SResult<List<Exercise>>> getExercisesPagination(
      int page, int perPage) async {
    return await apiCall<ExercisePagination, List<Exercise>>(
      mapper: (result) => result.content?.map((e) => e.toEntity).toList() ?? [],
      request: () async => await _exerciseApi.getExercisePagination(body: {
        "page": page,
        "perPage": perPage,
      }),
    );
  }
}
