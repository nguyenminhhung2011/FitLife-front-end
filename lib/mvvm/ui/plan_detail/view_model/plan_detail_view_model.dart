import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/me/entity/daily_workout/daily_workout.dart';
import 'package:fit_life/mvvm/me/entity/plan_detail/plan_detail.dart';
import 'package:fit_life/mvvm/repo/plan_repositories.dart';
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
  final _planRepository = injector.get<PlanRepositories>();
  PlanDetailViewModel()
      : super(
          _Initial(
            data: PlanDetailData(
              planDetail: PlanDetail(
                startDate: DateTime.now(),
                endDate: DateTime.now().add(const Duration(days: 10)),
              ),
            ),
          ),
        );

  void getPlanDetail() async {
    state = _Loading(data: state.data.copyWith(isLoadingSchedule: true));

    final call = await _planRepository.getDetailPlan(id: "");

    state = call.fold(
      ifLeft: (error) => _GetPlanDetailFailed(
        data: const PlanDetailData(),
        message: error.toString(),
      ),
      ifRight: (rData) => _GetPlanDetailSuccess(
        data: state.data.copyWith(
          isLoadingSchedule: false,
          planDetail: rData.copyWith(
            dailyWorkouts: [
              DailyWorkout(
                name: "Cyclone with Alastar",
                description: "Cuclone studio",
                time: DateTime.now(),
                totalMinute: 30,
              ),
              DailyWorkout(
                name: "Cyclone with Alastar",
                description: "Cuclone studio",
                time: DateTime.now(),
                totalMinute: 30,
              ),
              DailyWorkout(
                name: "Cyclone with Alastar",
                description: "Cuclone studio",
                time: DateTime.now(),
                totalMinute: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
