import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/object/entity/exercise/add_exercise_dto.dart';
import 'package:fit_life/mvvm/object/entity/request/update_setting_session_request.dart';
import 'package:fit_life/mvvm/object/entity/session/setting_session.dart';
import 'package:fit_life/mvvm/repositories/exercise_repositories.dart';
import 'package:fit_life/mvvm/repositories/session_repositories.dart';
import 'package:fit_life/mvvm/ui/exercise_schedule/view_model/exercise_overview/exercise_overview_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'exercise_overview_state.dart';

part 'exercise_overview_view_model.freezed.dart';

final AutoDisposeStateNotifierProvider<ExerciseOverviewViewModel,
        ExerciseOverviewState> exerciseOverviewStateNotifier =
    AutoDisposeStateNotifierProvider(
        (ref) => injector.get<ExerciseOverviewViewModel>());

@injectable
class ExerciseOverviewViewModel extends StateNotifier<ExerciseOverviewState> {
  final _sessionRepositories = injector.get<SessionRepositories>();
  final _exerciseRepositories = injector.get<ExerciseRepositories>();

  ExerciseOverviewViewModel()
      : super(
          const _Initial(data: ExerciseOverviewData()),
        );

  ExerciseOverviewData get data => state.data;

  Future<void> getExerciseOverview(int sessionId) async {
    state = _Loading(data: data);
    final response =
        await _sessionRepositories.getSessionById(id: sessionId.toString());
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) =>
          _GetSessionPlanFailed(data: data, message: error.message),
      ifRight: (rData) => _GetSessionPlanSuccess(
        data: data.copyWith(
          equipment: rData.customExercise
                  ?.map((e) => e.exercise.equipment ?? "assisted")
                  .toSet()
                  .toList() ??
              [],
          sessionPlan: rData,
        ),
      ),
    );
  }

  Future<void> updateSettingSession(SettingSession settingSession) async {
    if (data.sessionPlan == null) return;
    state = _Loading(data: data);
    final response = await _sessionRepositories.updateSettingSession(
      id: data.sessionPlan!.id,
      request: UpdateSettingSessionRequest.fromSettingSession(
          settingSession, data.sessionPlan!),
    );
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) =>
          _UpdateSettingSessionFailed(data: data, message: error.message),
      ifRight: (rData) => _UpdateSettingSessionSuccess(
        data: data.copyWith(sessionPlan: rData),
      ),
    );
  }

  Future<void> getExercisePagination({int perPage = 10}) async {
    final response =
        await _exerciseRepositories.getExercisesPagination(data.page, perPage);
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) =>
          _FetchExerciseFailed(data: data, message: error.message),
      ifRight: (rData) => _FetchExerciseSuccess(
        data: data.copyWith(
          exercises: (data.exercises ?? []) + rData,
          page: data.page + 1,
          isLastPage: rData.isEmpty,
        ),
      ),
    );
  }

  Future<void> createCustomExercise({required AddExerciseDto dto}) async {
    final response = await _exerciseRepositories
        .createExercise(data.sessionPlan!.id, dto: dto);
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) =>
          _CreateExerciseFailed(data: data, message: error.message),
      ifRight: (rData) => _CreateExerciseSuccess(
        data: data.copyWith(
            sessionPlan: data.sessionPlan?.copyWith(customExercise: [
          ...data.sessionPlan?.customExercise ?? [],
          rData,
        ])),
      ),
    );
  }
}
