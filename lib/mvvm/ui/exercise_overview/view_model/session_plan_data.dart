import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_plan_data.freezed.dart';

@freezed
class SessionPlanData with _$SessionPlanData {
  const factory SessionPlanData({
    @Default("") String sessionName,
    @Default("") String sessionDescription,
    @Default([]) List<String> tags,
    @Default("") String imageUrl,
    DateTime? date,
    @Default("") String title,
    @Default("") String description,
    int? numberOfRound,
    int? numberOfExerciseRound,
    bool? startWithBoot,
    bool? randomMix,
    int? timeForEach,
    int? transferTime,
    int? breakTime,
    int? leave,
    List<Session>? sessions,
  }) = _SessionPlanData;
}
