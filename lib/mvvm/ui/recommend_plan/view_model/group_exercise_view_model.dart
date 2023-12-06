import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/me/model/page_request/page_request.dart';
import 'package:fit_life/mvvm/me/model/search_exercise/search_exercise_request.dart';
import 'package:fit_life/mvvm/repo/exercise_repositories.dart';
import 'package:fit_life/mvvm/ui/recommend_plan/view_model/group_exercise_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'group_exercise_state.dart';

part 'group_exercise_view_model.freezed.dart';

final groupExerciseStateNotifier = AutoDisposeStateNotifierProvider<
    GroupExerciseViewModel,
    GroupExerciseState>((ref) => injector.get<GroupExerciseViewModel>());

@injectable
class GroupExerciseViewModel extends StateNotifier<GroupExerciseState> {
  final _exerciseRepositories = injector.get<ExerciseRepositories>();

  GroupExerciseViewModel()
      : super(
          const _Initial(data: GroupExerciseData(exercises: <BodyPart>[])),
        );

  GroupExerciseData get data => state.data;

  Future<void> getExerciseCategories() async {
    state = _Loading(data: data.copyWith(isGetExerciseLoading: true));
    final response = await _exerciseRepositories.getAllExerciseCategories();
    if (!mounted) {
      return;
    }
    state = response.fold(
      ifLeft: (error) => _GetExerciseCategoriesFailed(
        data: data.copyWith(isGetExerciseLoading: false),
        message: error.message,
      ),
      ifRight: (rData) => _GetExerciseCategoriesSuccess(
        data: data.copyWith(
            isGetExerciseLoading: false,
            exercises: [...data.exercises, ...rData]),
      ),
    );
  }

  Future<List<Exercise>> getExerciseByCategory(
      {required String category}) async {
    return (await _exerciseRepositories.searchExercise(
      SearchExerciseRequest(
        bodyPart: category,
        pageRequest: const PageRequest(perPage: 3, page: 0),
      ),
    ))
        .fold(ifLeft: (_) => [], ifRight: (data) => data);
  }
}
