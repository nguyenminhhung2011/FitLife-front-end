part of 'all_exercise_view_model.dart';

@freezed
class AllExerciseState with _$AllExerciseState {
  const AllExerciseState._();
  const factory AllExerciseState.initial({required AllExerciseData data}) =
      _Initial;

  const factory AllExerciseState.loading({required AllExerciseData data}) =
      _Loading;

  const factory AllExerciseState.getExerciseSuccess(
      {required AllExerciseData data}) = _GetExerciseSuccess;

  const factory AllExerciseState.getExerciseFailed({
    required AllExerciseData data,
    required String message,
  }) = _GetExerciseFailed;

  bool get loading => this is _Loading;
}
