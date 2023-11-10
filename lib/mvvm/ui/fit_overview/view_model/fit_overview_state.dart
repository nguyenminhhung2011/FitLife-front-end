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

  const factory FitOverViewState.getExerciseCategorySuccess(
      {required FitOverViewData data}) = _GetExerciseCategorySuccess;

  const factory FitOverViewState.getExerciseCategoryFailed(
      {required FitOverViewData data,
      required String message}) = _GetExerciseCategoryFailed;
}
