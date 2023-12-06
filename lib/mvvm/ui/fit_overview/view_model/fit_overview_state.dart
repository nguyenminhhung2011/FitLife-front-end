part of 'fit_overview_view_model.dart';

@freezed
class FitOverViewState with _$FitOverViewState {
  const factory FitOverViewState.initial({required FitOverViewData data}) =
      _Initial;
  const factory FitOverViewState.selectedDateSuccess(
      {required FitOverViewData data}) = _SelectedDataSuccess;

  const factory FitOverViewState.getUpComingSuccess(
      {required FitOverViewData data}) = _GetUpComingSuccess;

  const factory FitOverViewState.getUpComingFailed(
      {required FitOverViewData data,
      required String message}) = _GetUpComingFailed;

  const factory FitOverViewState.getBodyPartSuccess(
      {required FitOverViewData data}) = _GetBodyPartSuccess;

  const factory FitOverViewState.getBodyPartFailed(
      {required FitOverViewData data,
      required String message}) = _GetBodyPartFailed;

  const factory FitOverViewState.getCaloriesChartSuccess(
      {required FitOverViewData data}) = _GetCaloriesChartSuccess;

  const factory FitOverViewState.getCaloriesChartFailed({
    required FitOverViewData data,
    required String message,
  }) = _GetCaloriesChartFailed;

  const factory FitOverViewState.loading({
    required FitOverViewData data,
  }) = _Loading;
}
