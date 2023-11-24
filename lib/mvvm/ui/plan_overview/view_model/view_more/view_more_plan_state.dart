part of 'view_more_plan_view_model.dart';

@freezed
class ViewMorePlanState with _$ViewMorePlanState {
  const ViewMorePlanState._();
  const factory ViewMorePlanState.initial({
    required ViewMorePlanData data,
  }) = _Initial;

  const factory ViewMorePlanState.selectDateSuccess({
    required ViewMorePlanData data,
  }) = _SelectDateSuccess;

  const factory ViewMorePlanState.loading({
    required ViewMorePlanData data,
  }) = _Loading;

  const factory ViewMorePlanState.getItemsSuccess({
    required ViewMorePlanData data,
  }) = _GetItemSuccess;

  const factory ViewMorePlanState.getItemFailed({
    required ViewMorePlanData data,
    required String message,
  }) = _GetItemFailed;

  bool get loading => this is _Loading;
}
