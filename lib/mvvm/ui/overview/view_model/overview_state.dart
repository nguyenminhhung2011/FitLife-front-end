part of 'overview_view_model.dart';

@freezed
class OverviewState with _$OverviewState {
  const OverviewState._();

  const factory OverviewState.initial({required OverviewData data}) = _Initial;
  const factory OverviewState.success({required OverviewData data}) = _Success;
  const factory OverviewState.loading({required OverviewData data}) = _Loading;

  const factory OverviewState.getUpComingSessionSuccess(
      {required OverviewData data}) = _GetUpComingSessionSuccess;

  const factory OverviewState.getUpComingSessionFailed({
    required OverviewData data,
    required String message,
  }) = _GetUpComingSessionFailed;

  const factory OverviewState.getTopNewsSuccess({required OverviewData data}) =
      _GetTopNewsSuccess;

  const factory OverviewState.getTopNewsFailed({
    required OverviewData data,
    required String message,
  }) = _GetTopNewsFailed;

  const factory OverviewState.getBodyPartSuccess({required OverviewData data}) =
      _GetBodyPartSuccess;

  const factory OverviewState.getBodyPartFailed({
    required OverviewData data,
    required String message,
  }) = _GetBodyPartFailed;
}
