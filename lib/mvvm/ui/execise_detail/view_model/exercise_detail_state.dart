part of 'exercise_detail_view_model.dart';

@freezed
class ExerciseDetailState with _$ExerciseDetailState {
  const ExerciseDetailState._();
  const factory ExerciseDetailState.initial(
      {required ExerciseDetailData data}) = _Initial;

  const factory ExerciseDetailState.loading(
      {required ExerciseDetailData data}) = _Loading;

  const factory ExerciseDetailState.getExerciseByIdSuccess(
      {required ExerciseDetailData data}) = _GetExerciseByIdSuccess;

  const factory ExerciseDetailState.getExerciseByIdFailed(
      {required ExerciseDetailData data,
      required String message}) = _GetExerciseByIdFailed;

  bool get loading => this is _Loading;
}
