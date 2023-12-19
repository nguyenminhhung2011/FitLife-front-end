part of 'exercise_overview_view_model.dart';

@freezed
class ExerciseOverviewState with _$ExerciseOverviewState {
  const ExerciseOverviewState._();
  const factory ExerciseOverviewState.initial({
    required ExerciseOverviewData data,
  }) = _Initial;

  const factory ExerciseOverviewState.loading({
    required ExerciseOverviewData data,
  }) = _Loading;

  const factory ExerciseOverviewState.getSessionPlanSuccess(
      {required ExerciseOverviewData data}) = _GetSessionPlanSuccess;

  const factory ExerciseOverviewState.getSessionPlanFailed({
    required ExerciseOverviewData data,
    required String message,
  }) = _GetSessionPlanFailed;

  const factory ExerciseOverviewState.updateSettingSessionSuccess(
      {required ExerciseOverviewData data}) = _UpdateSettingSessionSuccess;

  const factory ExerciseOverviewState.updateSettingSessionFailed({
    required ExerciseOverviewData data,
    required String message,
  }) = _UpdateSettingSessionFailed;

  bool get loading => this is _Loading;
}
