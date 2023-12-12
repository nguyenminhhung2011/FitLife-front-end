import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/level.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_session.freezed.dart';

@freezed
class SettingSession with _$SettingSession {
  const factory SettingSession({
    required Level level,
    required int calcTarget,
    required int timePerLesson,
    required int numberRound,
    required int breakTime,
    required int transferTime,
  }) = _SettingSession;

  factory SettingSession.fromSession(Session session) => SettingSession(
        level: session.level ?? Level.beginner,
        calcTarget: session.calcTarget ?? 0,
        timePerLesson: session.timePerLesson ?? 0,
        numberRound: session.numberRound ?? 0,
        breakTime: session.breakTime ?? 0,
        transferTime: session.transferTime ?? 0,
      );
}
