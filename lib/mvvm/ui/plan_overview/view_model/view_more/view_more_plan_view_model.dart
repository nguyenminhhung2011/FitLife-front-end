import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/me/entity/pagination/pagination.dart';
import 'package:fit_life/mvvm/me/entity/request/search_plan_request.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';
import 'package:fit_life/mvvm/repo/workout_plan_repositories.dart';
import 'package:fit_life/mvvm/ui/plan_overview/view_model/view_more/view_more_plan_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'view_more_plan_state.dart';

part 'view_more_plan_view_model.freezed.dart';

final viewMorePlanStateNotifier =
    AutoDisposeStateNotifierProvider<ViewMorePlanViewModel, ViewMorePlanState>(
  (ref) {
    final viewModel = injector.get<ViewMorePlanViewModel>();
    return viewModel;
  },
);

@injectable
class ViewMorePlanViewModel extends StateNotifier<ViewMorePlanState> {
  final _workoutPlanRepositories = injector.get<WorkoutPlanRepositories>();
  ViewMorePlanViewModel()
      : super(
          const _Initial(
              data: ViewMorePlanData(
                  workoutPlans: Pagination<WorkoutPlan>(items: []))),
        );

  ViewMorePlanData get data => state.data;

  Future<void> getSessionPlanHistory(
      {required String content, bool? newSearch}) async {
    final isNewSearch = data.searchContent != content || (newSearch ?? false);
    if (state is _Loading && isNewSearch) return;
    final currentPage = isNewSearch ? 0 : data.workoutPlans.currentPage;

    state = _Loading(
      data: data.copyWith(
        workoutPlans: isNewSearch
            ? data.workoutPlans.copyWith(items: [], currentPage: currentPage)
            : data.workoutPlans,
      ),
    );

    final response =
        await _workoutPlanRepositories.searchWorkoutPlan(SearchPlanRequest(
      name: content,
      startDate: data.startDate?.millisecondsSinceEpoch,
      endDate: data.endDate?.millisecondsSinceEpoch,
      page: data.workoutPlans.currentPage,
      size: 5,
    ));

    if (!mounted) return;

    state = response.fold(
      ifLeft: (error) => _GetItemFailed(data: data, message: error.message),
      ifRight: (rData) => _GetItemSuccess(
        data: data.copyWith(
          workoutPlans: Pagination(
            items: isNewSearch
                ? rData ?? []
                : [...data.workoutPlans.items, ...?rData],
            currentPage: currentPage + 1,
            totalPage: data.workoutPlans.totalPage,
          ),
          searchContent: content,
        ),
      ),
    );
  }

  void selectRangeTime(
      {required DateTime startTime, required DateTime endTime}) {
    state = _SelectDateSuccess(
        data: data.copyWith(startDate: startTime, endDate: endTime));
  }
}
