import 'package:fit_life/mvvm/ui/wo_trac/view_model/wo_trac_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'wo_trac_state.dart';

part 'wo_trac_view_model.freezed.dart';

enum WooExerciseAction { next, previous }

final wooTrackStateNotifier =
    AutoDisposeStateNotifierProvider<WooTrackViewModel, WooTrackState>(
        (ref) => WooTrackViewModel());

@injectable
class WooTrackViewModel extends StateNotifier<WooTrackState> {
  WooTrackViewModel()
      : super(const _Initial(
            data: WooTrackData(currentExIndex: 0, isPlayed: true)));

  void changeCurrentEx(int length) {
    final currentEx = state.data.currentExIndex;
    if (currentEx < length - 1) {
      state = _ChangeExerciseSuccess(
        data: state.data.copyWith(currentExIndex: currentEx + 1),
      );
    } else {
      state = _CompletedRound(
          data: state.data.copyWith(currentExIndex: length - 1));
    }
  }

  void changePlayStatus() {
    final currentStatus = state.data.isPlayed;
    state =
        _PlayPauseSuccess(data: state.data.copyWith(isPlayed: !currentStatus));
  }

  void nextPreviousEx(
      {required WooExerciseAction wooExerciseAction, required int length}) {
    final currentEx = state.data.currentExIndex;
    if (wooExerciseAction == WooExerciseAction.next) {
      if (currentEx >= (length - 1)) {
        return;
      }
      state = _NextPreviousSuccess(
          data: state.data.copyWith(currentExIndex: currentEx + 1));
    } else {
      if (currentEx <= 0) {
        return;
      }
      state = _NextPreviousSuccess(
          data: state.data.copyWith(currentExIndex: currentEx - 1));
    }
  }
}
