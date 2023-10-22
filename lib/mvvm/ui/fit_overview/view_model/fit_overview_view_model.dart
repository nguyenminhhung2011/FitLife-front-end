import 'package:fit_life/mvvm/ui/fit_overview/view_model/fit_overview_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'fit_overview_state.dart';

part 'fit_overview_view_model.freezed.dart';

final fitOverViewNotifier =
    AutoDisposeStateNotifierProvider<FitOverViewViewModel, FitOverViewState>(
        (ref) => FitOverViewViewModel());

@injectable
class FitOverViewViewModel extends StateNotifier<FitOverViewState> {
  ///---------------
  FitOverViewData get data => state.data;
  FitOverViewViewModel() : super(const _Initial(data: FitOverViewData()));

  void onSelectedDate(List<DateTime> times) {
    state = _SelectedDataSuccess(data: data.copyWith(rangeDate: times));
  }
}