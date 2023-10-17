import 'package:flutter_base_clean_architecture/mvvm/ui/fit_overview/view_model/fit_overview_data.dart';
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
  FitOverViewViewModel() : super(const _Initial(data: FitOverViewData()));
}
