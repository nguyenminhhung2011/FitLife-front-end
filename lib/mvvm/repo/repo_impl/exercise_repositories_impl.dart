import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/core/components/network/data_state.dart';
import 'package:fit_life/mvvm/data/remote/exercise/exercise_api.dart';
import 'package:fit_life/mvvm/me/entity/exercise/add_exercise_dto.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/repo/exercise_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ExerciseRepositories)
class ExerciseRepositoriesImpl extends BaseApi implements ExerciseRepositories {
  final ExerciseApi _exerciseApi;
  ExerciseRepositoriesImpl(this._exerciseApi);

  @override
  Future<SResult<List<BodyPart>>> getExerciseCategories(
      {required int currentPage, required int perPage}) async {
    try {
      final response = await getStateOf(
          request: () async => await _exerciseApi.getBodyPart());
      if (response is DataFailed) {
        return Either.left(
          AppException(message: response.dioError?.message ?? baseError),
        );
      }
      if (response.data?.isNotEmpty ?? false) {
        final startIndex = currentPage * perPage;
        return Either.right(
          response.data!
              .map((e) => e.toEntity)
              .toList()
              .sublist(startIndex, startIndex + perPage),
        );
      }
      return Either.left(AppException(message: dataNullError));
    } catch (error) {
      return Either.left(AppException(message: error.toString()));
    }
  }

  @override
  Future<SResult<List<BodyPart>>> getAllExerciseCategories() async {
    try {
      final response = await getStateOf(
          request: () async => await _exerciseApi.getBodyPart());
      if (response is DataFailed) {
        return Either.left(
            AppException(message: response.dioError?.message ?? baseError));
      }
      if (response.data?.isNotEmpty ?? false) {
        return Either.right(response.data!.map((e) => e.toEntity).toList());
      }
      return Either.left(AppException(message: dataNullError));
    } catch (error) {
      return Either.left(AppException(message: error.toString()));
    }
  }

  @override
  Future<SResult<List<Exercise>>> getExerciseByFilter({
    String? content,
    String? category,
    int currentPage = 0,
    int perPage = 5,
  }) async {
    final mapCall = {
      "currentPage": currentPage.toString(),
      "size": perPage.toString()
    };
    if (content != null) {
      mapCall.addAll({"content": content});
    }
    if (category != null) {
      mapCall.addAll({"category": category});
    }

    return Either.right(
      <Exercise>[
        ...List.generate(
          perPage,
          (index) => Exercise(
            name: "Barbell Bench press",
            description: "This is descrion this is description",
            BodyPart: category,
            reps: 30,
            caloriesPerMinute: 100,
          ),
        )
      ],
    );
  }

  @override
  Future<SResult<bool>> createExercise({
    required AddExerciseDto dto,
  }) async {
    return const Either.right(true);
  }
}
