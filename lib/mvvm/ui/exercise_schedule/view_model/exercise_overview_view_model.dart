import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/me/entity/request/update_setting_session_request.dart';
import 'package:fit_life/mvvm/me/entity/session/setting_session.dart';
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
  final String _sessionId;
  final _sessionRepositories = injector.get<SessionRepositories>();
  ExerciseOverviewViewModel({@factoryParam required String sessionId})
      : _sessionId = sessionId,
        super(
          const _Initial(data: ExerciseOverviewData()),
        );

  ExerciseOverviewData get data => state.data;

  String get sessionId => _sessionId;

  Future<void> getExerciseOverview() async {
    state = _Loading(data: data);
    final response = await _sessionRepositories.getSessionById(id: _sessionId);
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
      id: int.parse(data.sessionPlan!.id),
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
}
