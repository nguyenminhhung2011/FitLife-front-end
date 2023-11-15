import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/repo/plan_repositories.dart';
import 'package:fit_life/mvvm/ui/plan_overview/view_model/plan_overview_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'plan_overview_state.dart';

part 'plan_overview_view_model.freezed.dart';

final planOverviewStateNotifier =
    AutoDisposeStateNotifierProvider<PlanOverViewViewModel, PlanOverViewState>(
        (ref) => injector.get<PlanOverViewViewModel>());

@injectable
class PlanOverViewViewModel extends StateNotifier<PlanOverViewState> {
  final _planRepositories = injector.get<PlanRepositories>();
  PlanOverViewViewModel() : super(const _Initial(data: PlanOverViewData()));

  PlanOverViewData get data => state.data;

  Future<void> getCurrentPlan() async {
    state = _Loading(data: data.copyWith(isLoadingCurrentPlan: true));
    final response = await _planRepositories.getCurrentPlan();
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;

    state = response.fold(
      ifLeft: (error) => _GetCurrentPlanFailed(
        data: data.copyWith(isLoadingCurrentPlan: false),
        message: error.message,
      ),
      ifRight: (currentPlan) => _GetCurrentPlanSuccess(
        data: data.copyWith(
            currentPlan: currentPlan, isLoadingCurrentPlan: false),
      ),
    );
  }

  Future<void> getSessionPlanHistory() async {
    state = _Loading(data: data.copyWith(isLoadingWorkoutPlans: true));

    final call = await _planRepositories.getTopPlan(topCountable: 2);

    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;

    state = call.fold(
      ifLeft: (error) => _GetSessionPlanHistoryFailed(
        data: data.copyWith(isLoadingWorkoutPlans: false),
        message: error.message,
      ),
      ifRight: (rData) => _GetCurrentPlanSuccess(
        data: data.copyWith(
          workoutPlans: [...rData],
          isLoadingWorkoutPlans: false,
        ),
      ),
    );
  }
}
