import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/object/entity/daily_workout/daily_workout.dart';
import 'package:fit_life/mvvm/object/entity/session/add_session_dto.dart';
import 'package:fit_life/mvvm/repositories/session_repositories.dart';
import 'package:fit_life/mvvm/ui/session_plan/view_model/session_plan_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'session_plan_state.dart';

part 'session_plan_view_model.freezed.dart';

AutoDisposeStateNotifierProvider<SessionPlanViewModel, SessionPlanState>
    sessionPlanStateNotifier =
    AutoDisposeStateNotifierProvider<SessionPlanViewModel, SessionPlanState>(
        (ref) => injector.get<SessionPlanViewModel>());

@injectable
class SessionPlanViewModel extends StateNotifier<SessionPlanState> {
  final DailyWorkout? dailyWorkout;

  final _sessionPlan = injector.get<SessionRepositories>();
  SessionPlanViewModel(@factoryParam this.dailyWorkout)
      : super(
          _Initial(
            data: SessionPlanData(
              title: dailyWorkout?.name,
              description: dailyWorkout?.description,
              id: dailyWorkout?.id,
              time: dailyWorkout?.time,
              sessions: [],
            ),
          ),
        );

  void getAllSession() async {
    state = _Loading(data: state.data);

    final call =
        await _sessionPlan.getAllSessionByDailyID(dailyWorkout!.id.toString());

    state = call.fold(
      ifLeft: (error) => _GetSessionPlanFailed(
        data: state.data,
        message: error.toString(),
      ),
      ifRight: (rData) => _GetSessionPlanSuccess(
        data: state.data.copyWith(sessions: rData),
      ),
    );
  }

  Future<void> createSession({
    required int id,
    required AddSessionDTO dto,
  }) async {
    final call = await _sessionPlan.createSession(session: dto);

    state = call.fold(
      ifLeft: (error) => _AddSessionPlanFailed(
        data: state.data,
        message: error.toString(),
      ),
      ifRight: (sessionResponse) => _AddSessionPlanSuccess(
        data: state.data.copyWith(
          sessions: [
            ...state.data.sessions ?? [],
            sessionResponse,
          ],
        ),
      ),
    );
  }
}
