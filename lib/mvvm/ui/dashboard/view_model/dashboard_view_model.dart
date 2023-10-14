import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

final dashboardNotifier =
    AutoDisposeStateNotifierProvider<DashboardViewModel, int>(
        (ref) => DashboardViewModel(0));


@injectable
class DashboardViewModel extends StateNotifier<int> {
  DashboardViewModel(super.state);

  void changeState(int index) {
    state = index;
  }
}
