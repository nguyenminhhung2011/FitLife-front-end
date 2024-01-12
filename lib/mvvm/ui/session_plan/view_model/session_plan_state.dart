part of 'session_plan_view_model.dart';

@freezed
class SessionPlanState with _$SessionPlanState {
  const SessionPlanState._();
  const factory SessionPlanState.initial({
    required SessionPlanData data,
  }) = _Initial;

  const factory SessionPlanState.loading({
    required SessionPlanData data,
  }) = _Loading;

  const factory SessionPlanState.getSessionPlanSuccess(
      {required SessionPlanData data}) = _GetSessionPlanSuccess;

  const factory SessionPlanState.getSessionPlanFailed({
    required SessionPlanData data,
    required String message,
  }) = _GetSessionPlanFailed;

  const factory SessionPlanState.addSessionPlanSuccess({
    required SessionPlanData data,
  }) = _AddSessionPlanSuccess;

  const factory SessionPlanState.addSessionPlanFailed({
    required SessionPlanData data,
    required String message,
  }) = _AddSessionPlanFailed;
}
