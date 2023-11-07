import 'package:fit_life/mvvm/ui/overview/view_model/overview_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'overview_state.dart';

part 'overview_view_model.freezed.dart';

final overviewStateNotifier =
    AutoDisposeStateNotifierProvider<OverviewViewModel, OverviewState>(
        (ref) => OverviewViewModel());

@injectable
class OverviewViewModel extends StateNotifier<OverviewState> {
  OverviewViewModel() : super(const _Initial(data: OverviewData()));
}
