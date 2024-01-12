import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/object/entity/daily_workout/daily_workout_dto.dart';
import 'package:fit_life/mvvm/repositories/daily_plan_repositories.dart';
import 'package:fit_life/mvvm/ui/plan_detail/view_model/plan_detail_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'plan_detail_state.dart';

part 'plan_detail_view_model.freezed.dart';

final planDetailStateNotifier =
    AutoDisposeStateNotifierProvider<PlanDetailViewModel, PlanDetailState>(
        (ref) => injector.get<PlanDetailViewModel>());

@injectable
class PlanDetailViewModel extends StateNotifier<PlanDetailState> {
  final _dailyPlan = injector.get<DailyPlanRepositories>();

  PlanDetailViewModel() : super(const _Initial(data: PlanDetailData()));

  void getPlanDetail(int id) async {
    state = _Loading(data: state.data.copyWith(isLoadingSchedule: true));

    final call = await _dailyPlan.getDailyPlanByWorkoutPlanId(id: id);

    state = call.fold(
      ifLeft: (error) => _GetPlanDetailFailed(
        data: const PlanDetailData(),
        message: error.toString(),
      ),
      ifRight: (rData) => _GetPlanDetailSuccess(
        data: state.data.copyWith(
          isLoadingSchedule: false,
          planDetail: state.data.planDetail.copyWith(
            dailyWorkouts: rData,
          ),
        ),
      ),
    );
  }

  Future<void> addDailyPlan({
    required DailyWorkoutDTO dto,
    required int id,
  }) async {
    final call = await _dailyPlan.addDailyPlan(id: id, dto: dto);

    state = call.fold(
      ifLeft: (error) => _AddDailyWorkoutFailed(
        data: state.data,
        message: error.toString(),
      ),
      ifRight: (dailyResponse) => _AddDailyWorkoutSuccess(
        data: state.data.copyWith(
          planDetail: state.data.planDetail.copyWith(
            dailyWorkouts: [
              ...state.data.planDetail.dailyWorkouts ?? [],
              dailyResponse,
            ],
          ),
        ),
      ),
    );
  }
}
