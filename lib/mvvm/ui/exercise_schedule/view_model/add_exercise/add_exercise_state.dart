part of 'add_exercise_view_model.dart';

@freezed
class AddExerciseState with _$AddExerciseState {
  const AddExerciseState._();
  const factory AddExerciseState.initial({
    required AddExerciseData data,
  }) = _Initial;

  const factory AddExerciseState.selectBodyPartSuccess({
    required AddExerciseData data,
  }) = _SelectBodyPartSuccess;

  const factory AddExerciseState.loading({
    required AddExerciseData data,
  }) = _Loading;

  const factory AddExerciseState.getItemsSuccess({
    required AddExerciseData data,
  }) = _GetItemSuccess;

  const factory AddExerciseState.getItemFailed({
    required AddExerciseData data,
    required String message,
  }) = _GetItemFailed;

  const factory AddExerciseState.getBodyPartsSuccess({
    required AddExerciseData data,
  }) = _GetBodyPartSuccess;

  const factory AddExerciseState.getBodyPartFailed({
    required AddExerciseData data,
    required String message,
  }) = _GetBodyPartFailed;

  const factory AddExerciseState.chooseExerciseSuccess(
      {required AddExerciseData data}) = _ChooseExerciseSuccess;

  const factory AddExerciseState.changeTabSuccess(
      {required AddExerciseData data}) = _ChangeTabSuccess;

  bool get loading => this is _Loading;
}
