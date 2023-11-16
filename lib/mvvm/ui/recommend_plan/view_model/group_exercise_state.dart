part of 'group_exercise_view_model.dart';

@freezed
class GroupExerciseState with _$GroupExerciseState {
  const GroupExerciseState._();
  const factory GroupExerciseState.initial({required GroupExerciseData data}) =
      _Initial;
  const factory GroupExerciseState.loading({required GroupExerciseData data}) =
      _Loading;

  const factory GroupExerciseState.getExerciseCategoriesSuccess(
      {required GroupExerciseData data}) = _GetExerciseCategoriesSuccess;

  const factory GroupExerciseState.getExerciseCategoriesFailed({
    required GroupExerciseData data,
    required String message,
  }) = _GetExerciseCategoriesFailed;

  bool get loadingGetExerciseCategories => maybeWhen(
        loading: (data) => data.isGetExerciseLoading == true,
        orElse: () => false,
      );
}
