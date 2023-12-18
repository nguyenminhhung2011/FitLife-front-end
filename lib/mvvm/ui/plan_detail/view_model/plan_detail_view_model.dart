import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/me/entity/daily_workout/daily_workout.dart';
import 'package:fit_life/mvvm/me/entity/exercise/add_exercise_dto.dart';
import 'package:fit_life/mvvm/repo/daily_plan_repositories.dart';
import 'package:fit_life/mvvm/repo/exercise_repositories.dart';
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
  final _exerciseRepository = injector.get<ExerciseRepositories>();
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

  Future<void> addExercise({required AddExerciseDto dto}) async {
    final call = await _exerciseRepository.createExercise(dto: dto);
    state = call.fold(
      ifLeft: (error) => _GetPlanDetailFailed(
        data: const PlanDetailData(),
        message: error.toString(),
      ),
      ifRight: (_) => _AddExerciseSuccess(
        data: state.data.copyWith(
          planDetail: state.data.planDetail.copyWith(
            dailyWorkouts: [
              ...state.data.planDetail.dailyWorkouts ?? [],
              DailyWorkout(
                name: dto.exercise.name,
                description: dto.exercise.description,
                time: DateTime.now().millisecondsSinceEpoch,
                totalMinute: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
