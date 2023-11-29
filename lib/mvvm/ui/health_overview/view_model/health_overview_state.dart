part of 'health_overview_view_model.dart';


@freezed
class HealthOverviewState with _$HealthOverviewState {
  const HealthOverviewState._();

  const factory HealthOverviewState.initial({required HealthOverviewData data}) = _Initial;
  const factory HealthOverviewState.success({required HealthOverviewData data}) = _Success;
  const factory HealthOverviewState.loading({required HealthOverviewData data}) = _Loading;

  const factory HealthOverviewState.updateInformationSuccess(
      {required HealthOverviewData data}) = _updateInformationSuccess;

  const factory HealthOverviewState.updateInformationFailed({
    required HealthOverviewData data,
    required String message,
  }) = _updateInformationFailed;
}
