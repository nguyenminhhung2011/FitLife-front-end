import 'dart:math';

import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/me/entity/exercise/add_exercise_dto.dart';
import 'package:fit_life/mvvm/me/entity/request/update_setting_session_request.dart';
import 'package:fit_life/mvvm/me/entity/session/setting_session.dart';
import 'package:fit_life/mvvm/repo/exercise_repositories.dart';
import 'package:fit_life/mvvm/repo/session_repositories.dart';
import 'package:fit_life/mvvm/ui/exercise_schedule/view_model/exercise_overview_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'exercise_overview_state.dart';

part 'exercise_overview_view_model.freezed.dart';

late AutoDisposeStateNotifierProvider<ExerciseOverviewViewModel,
    ExerciseOverviewState> exerciseOverviewStateNotifier;

@injectable
class ExerciseOverviewViewModel extends StateNotifier<ExerciseOverviewState> {
  final int _sessionId;
  final _sessionRepositories = injector.get<SessionRepositories>();
  final _exerciseRepositories = injector.get<ExerciseRepositories>();

  ExerciseOverviewViewModel({@factoryParam required int sessionId})
      : _sessionId = sessionId,
        super(
          const _Initial(data: ExerciseOverviewData()),
        );

  ExerciseOverviewData get data => state.data;

  int get sessionId => _sessionId;

  Future<void> getExerciseOverview() async {
    state = _Loading(data: data);
    final response =
        await _sessionRepositories.getSessionById(id: _sessionId.toString());
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
