import 'package:collection/collection.dart';
import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/action.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/level.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_session.freezed.dart';

@freezed
class SettingSession with _$SettingSession {
  const factory SettingSession({
    required String level,
    required int calcTarget,
    required int timePerLesson,
    required int numberRound,
    required int breakTime,
    required int transferTime,
    required bool startWithBoot,
    required bool randomMix,
  }) = _SettingSession;

  factory SettingSession.fromSession(Session session) => SettingSession(
        level: session.level ?? Level.beginner.renderString,
        calcTarget: session.calcTarget ?? 0,
        timePerLesson: session.timePerLesson ?? 0,
        numberRound: session.numberRound ?? 0,
        breakTime: session.breakTime ?? 0,
        transferTime: session.transferTime ?? 0,
        startWithBoot: session.startWithBoot ?? false,
        randomMix: session.randomMix ?? false,
      );
}

extension SettingSessionExtension on SettingSession {
  List<Map<String, dynamic>> get createMap => [
        ...[
          calcTarget,
          timePerLesson,
          numberRound,
          breakTime,
          transferTime,
          startWithBoot,
          randomMix,
        ].mapIndexed((index, e) => {
              "action": switch (index) {
                0 => SettingExerciseActions.calories,
                1 => SettingExerciseActions.timForEach,
                2 => SettingExerciseActions.numberRound,
                3 => SettingExerciseActions.breakTime,
                4 => SettingExerciseActions.transferTime,
                5 => SettingExerciseActions.startWithBoot,
                _ => SettingExerciseActions.randomMix
              },
              "data": e
            }),
      ];
}
