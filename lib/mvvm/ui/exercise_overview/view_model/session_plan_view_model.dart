import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/level.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/view_model/session_plan_data.dart';
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
  SessionPlanViewModel()
      : super(
          _Initial(
            data: SessionPlanData(
              sessionName: "Session 1",
              sessionDescription: 'Day 1 (Refresh brain)',
              tags: [
                '🌞',
                ' Morning exercises | ',
                '🌚',
                ' Afternoon exercises | ',
                '🔥',
                ' 3500 Calories burn'
              ],
              title: "Refresh brain and relax",
              description:
                  'one\'s ability to execute daily activities with optimal performance, endurance, and strength with the management of disease, fatigue, and stress and reduced sedentary behavio, fatigue, and stress and reduced sedentary behavio, fatigue, and stress and reduced sedentary behavio',
              sessions: const [
                Session(
                  id: "1",
                  dwId: "23",
                  name: "🌞 Morning exercises",
                  level: Level.beginner,
                ),
                Session(
                  id: "12",
                  dwId: "234",
                  name: "🌚 Afternoon exercises",
                  level: Level.advanced,
                ),
              ],
              breakTime: 12,
              numberOfExerciseRound: 12,
              numberOfRound: 12,
              randomMix: true,
              startWithBoot: true,
              timeForEach: 12,
              transferTime: 12,
              leave: 12,
              date: DateTime.now(),
            ),
          ),
        );
}
