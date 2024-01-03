import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/object/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/object/entity/pagination/pagination.dart';
import 'package:fit_life/mvvm/object/entity/request/search_exercise_request.dart';
import 'package:fit_life/mvvm/object/model/page_request/page_request.dart';
import 'package:fit_life/mvvm/repositories/exercise_repositories.dart';
import 'package:fit_life/mvvm/ui/exercise_schedule/view_model/add_exercise/add_exercise_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_exercise_state.dart';
part 'add_exercise_view_model.freezed.dart';

final addExerciseStateNotifier =
    AutoDisposeStateNotifierProvider<AddExerciseViewModel, AddExerciseState>(
        (ref) => injector.get<AddExerciseViewModel>());

@injectable
class AddExerciseViewModel extends StateNotifier<AddExerciseState> {
  final _exerciseRepositories = injector.get<ExerciseRepositories>();
  AddExerciseViewModel()
      : super(
          const _Initial(
            data: AddExerciseData(
              exercises: Pagination<Exercise>(items: []),
              bodyParts: [],
              bodyPart: "cardio",
            ),
          ),
        );

  AddExerciseData get data => state.data;

  Future<void> getBodyPart() async {
    final response = await _exerciseRepositories.getAllExerciseCategories();
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) => _GetBodyPartFailed(data: data, message: error.message),
      ifRight: (rData) =>
          _GetBodyPartSuccess(data: data.copyWith(bodyParts: rData)),
    );
  }

  void selectBodyPart(String bodyPart) {
    state = _SelectBodyPartSuccess(data: data.copyWith(bodyPart: bodyPart));
  }

  void changeTab(int newTab) {
    state = _ChangeTabSuccess(data: data.copyWith(currentTab: newTab));
  }

  void chooseExercise(Exercise exercise) {
    state =
        _ChooseExerciseSuccess(data: data.copyWith(exerciseChosen: exercise));
  }

  Future<void> searchExercise(
      {required String content, bool? newSearch}) async {
    final isNewSearch = data.searchContent != content || (newSearch ?? false);
    if (state is _Loading && isNewSearch) return;
    final currentPage = isNewSearch ? 0 : data.exercises.currentPage;

    state = _Loading(
      data: data.copyWith(
        exercises: isNewSearch
            ? data.exercises.copyWith(items: [], currentPage: currentPage)
            : data.exercises,
      ),
    );

    final response = await _exerciseRepositories.searchExercise(
      SearchExerciseRequest(
        bodyPart: data.bodyPart ?? "",
        name: content,
        pageRequest: PageRequest(page: currentPage, perPage: 10),
      ),
    );

    if (!mounted) return;

    state = response.fold(
      ifLeft: (error) => _GetItemFailed(data: data, message: error.message),
      ifRight: (rData) => _GetItemSuccess(
        data: data.copyWith(
          exercises: Pagination(
            items: isNewSearch ? rData : [...data.exercises.items, ...rData],
            currentPage: currentPage + 1,
            totalPage: data.exercises.totalPage,
          ),
          searchContent: content,
        ),
      ),
    );
  }
}
