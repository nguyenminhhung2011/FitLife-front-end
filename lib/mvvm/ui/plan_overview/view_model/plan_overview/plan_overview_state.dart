part of 'plan_overview_view_model.dart';

@freezed
class PlanOverViewState with _$PlanOverViewState {
  const factory PlanOverViewState.initial({required PlanOverViewData data}) =
      _Initial;
  const factory PlanOverViewState.success({required PlanOverViewData data}) =
      _Success;

  const factory PlanOverViewState.loading({required PlanOverViewData data}) =
      _Loading;

  const factory PlanOverViewState.getCurrentPlanSuccess({
    required PlanOverViewData data,
  }) = _GetCurrentPlanSuccess;

  const factory PlanOverViewState.getCurrentPlanFailed({
    required PlanOverViewData data,
    required String message,
  }) = _GetCurrentPlanFailed;

  const factory PlanOverViewState.getSessionPlanHistorySuccess({
    required PlanOverViewData data,
  }) = _GetSessionPlanHistorySuccess;

  const factory PlanOverViewState.getSessionPlanHistoryFailed({
    required PlanOverViewData data,
    required String message,
  }) = _GetSessionPlanHistoryFailed;

  const factory PlanOverViewState.createPlanSuccess({
    required PlanOverViewData data,
  }) = _CreatePlanSuccess;

  const factory PlanOverViewState.createPlanFailed({
    required PlanOverViewData data,
    required String message,
  }) = _CreatePlanFailed;
}
