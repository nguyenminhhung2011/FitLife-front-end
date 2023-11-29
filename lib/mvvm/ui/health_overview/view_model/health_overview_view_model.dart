import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/ui/health_overview/view_model/health_overview_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'health_overview_state.dart';

part 'health_overview_view_model.freezed.dart';

final healthOverviewStateNotifier = AutoDisposeStateNotifierProvider<
    HealthOverviewViewModel,
    HealthOverviewState>((ref) => injector.get<HealthOverviewViewModel>());

@injectable
class HealthOverviewViewModel extends StateNotifier<HealthOverviewState> {
  HealthOverviewViewModel() : super(const _Initial(data: HealthOverviewData()));

  HealthOverviewData get data => state.data;

  void updateUserProfile(HealthOverviewData data) async {
    if (state is _Loading) return;
    state = _Loading(data: state.data);
    await Future.delayed(const Duration(seconds: 2), () {
      state = _updateInformationSuccess(data: data);
    });
  }
}
