part of 'all_pt_view_model.dart';

@freezed
class AllPtState with _$AllPtState {
  const AllPtState._();

  const factory AllPtState.initial({required AllPtData data}) = _Initial;
  const factory AllPtState.loading({required AllPtData data}) = _Loading;
  const factory AllPtState.getPtSuccess({required AllPtData data}) =
      _GetPtSuccess;
  const factory AllPtState.getPtFailed({
    required AllPtData data,
    required String message,
  }) = _GetPtFailed;

  const factory AllPtState.changeTrainerTypeSuccess({required AllPtData data}) =
      _ChangeTrainerTypeSuccess;

  bool get loading => this is _Loading;
}
