part of 'wo_trac_view_model.dart';

@freezed
class WooTrackState with _$WooTrackState {
  const factory WooTrackState.initial({required WooTrackData data}) = _Initial;
  const factory WooTrackState.changeExerciseSuccess(
      {required WooTrackData data}) = _ChangeExerciseSuccess;
  const factory WooTrackState.completeRound({required WooTrackData data}) =
      _CompletedRound;
  const factory WooTrackState.playPauseSuccess({required WooTrackData data}) =
      _PlayPauseSuccess;
  const factory WooTrackState.nextPreviousSuccess(
      {required WooTrackData data}) = _NextPreviousSuccess;
}
