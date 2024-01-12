import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/object/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/object/entity/request/search_exercise_request.dart';
import 'package:fit_life/mvvm/object/model/page_request/page_request.dart';
import 'package:fit_life/mvvm/repositories/exercise_repositories.dart';
import 'package:fit_life/mvvm/ui/category/view_model/category_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'category_state.dart';
part 'category_view_model.freezed.dart';

final categoryStateNotifier =
    AutoDisposeStateNotifierProvider<CategoryViewModel, CategoryState>(
        (ref) => injector.get<CategoryViewModel>());

@injectable
class CategoryViewModel extends StateNotifier<CategoryState> {
  final _exerciseRepositories = injector.get<ExerciseRepositories>();
  CategoryViewModel() : super(const _Initial(data: CategoryData()));

  CategoryData get data => state.data;

  Future<void> getCategories() async {
    state = _Loading(data: data);
    final response = await _exerciseRepositories.getAllExerciseCategories();
    if (!mounted) return;
    state = response.fold(
      ifRight: (rData) => _GetCategorySuccess(
        data: data.copyWith(categories: rData),
      ),
      ifLeft: (error) => _GetCategoryFailed(data: data, message: error.message),
    );
  }

  Future<List<Exercise>> getExerciseByCategory({
    required String bodyPart,
    required int pageGet,
  }) async {
    return (await _exerciseRepositories.searchExercise(SearchExerciseRequest(
            bodyPart: bodyPart,
            pageRequest: PageRequest(perPage: 10, page: pageGet))))
        .fold(
      ifLeft: (error) => [],
      ifRight: (rData) => rData,
    );
  }
}
