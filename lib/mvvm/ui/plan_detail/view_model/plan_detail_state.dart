part of 'plan_detail_view_model.dart';

@freezed
class PlanDetailState with _$PlanDetailState {
  const factory PlanDetailState.initial({required PlanDetailData data}) = _Initial;
  const factory PlanDetailState.success({required PlanDetailData data}) =
      _Success;

  const factory PlanDetailState.loading({required PlanDetailData data}) =
      _Loading;

  const factory PlanDetailState.getPlanDetailSuccess({
    required PlanDetailData data,
  }) = _GetPlanDetailSuccess;

  const factory PlanDetailState.getPlanDetailFailed({
    required PlanDetailData data,
    required String message,
  }) = _GetPlanDetailFailed;

  const factory PlanDetailState.addDailyWorkoutSuccess({
    required PlanDetailData data,
  }) = _AddDailyWorkoutSuccess;

  const factory PlanDetailState.addDailyWorkoutFailed({
    required PlanDetailData data,
    required String message,
  }) = _AddDailyWorkoutFailed;
}
