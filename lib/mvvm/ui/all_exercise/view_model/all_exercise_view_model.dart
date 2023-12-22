import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/pagination/pagination.dart';
import 'package:fit_life/mvvm/me/model/page_request/page_request.dart';
import 'package:fit_life/mvvm/me/entity/request/search_exercise_request.dart';
import 'package:fit_life/mvvm/repo/exercise_repositories.dart';
import 'package:fit_life/mvvm/ui/all_exercise/view_model/all_exercise_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'all_exercise_state.dart';
part 'all_exercise_view_model.freezed.dart';

late AutoDisposeStateNotifierProvider<AllExerciseViewModel, AllExerciseState>
    allExerciseStateNotifier;

@injectable
class AllExerciseViewModel extends StateNotifier<AllExerciseState> {
  final _exerciseRepositories = injector.get<ExerciseRepositories>();
  final String _categoryId;
  AllExerciseViewModel({@factoryParam required String categoryId})
      : _categoryId = categoryId,
        super(const _Initial(
            data: AllExerciseData(exercises: Pagination<Exercise>(items: []))));

  AllExerciseData get data => state.data;

  String get categoryId => _categoryId;

  Future<void> getExercise({
    required String content,
  }) async {
    final isNewSearch = data.searchContent != content;
    if (state is _Loading && isNewSearch) return;
    final currentPage = isNewSearch ? 0 : data.exercises.currentPage;

    state = _Loading(
        data: data.copyWith(
      exercises: isNewSearch
          ? data.exercises.copyWith(items: [], currentPage: 0)
          : data.exercises,
    ));

    final response = await _exerciseRepositories.searchExercise(
      SearchExerciseRequest(
        pageRequest: PageRequest(perPage: 10, page: currentPage),
        name: content,
        bodyPart: _categoryId,
      ),
    );

    await Future.delayed(const Duration(seconds: 3));

    if (!mounted) return;

    state = response.fold(
      ifLeft: (err) => _GetExerciseFailed(data: data, message: err.toString()),
      ifRight: (rData) => _GetExerciseSuccess(
        data: data.copyWith(
          exercises: Pagination(
            totalPage: data.exercises.totalPage,
            currentPage: currentPage + 1,
            items: isNewSearch ? rData : [...data.exercises.items, ...rData],
          ),
          searchContent: content,
        ),
      ),
    );
  }
}
