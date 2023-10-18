part of 'fit_overview_view_model.dart';

@freezed
class FitOverViewState with _$FitOverViewState {
  const factory FitOverViewState.initial({required FitOverViewData data}) =
      _Initial;
  const factory FitOverViewState.selectedDateSuccess(
      {required FitOverViewData data}) = _SelectedDataSuccess;
}
