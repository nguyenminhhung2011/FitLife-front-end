part of 'plan_overview_view_model.dart';

@freezed
class PlanOverViewState with _$PlanOverViewState {
  const factory PlanOverViewState.initial({required PlanOverViewData data}) =
      _Initial;
  const factory PlanOverViewState.success({required PlanOverViewData data}) =
      _Success;
}
