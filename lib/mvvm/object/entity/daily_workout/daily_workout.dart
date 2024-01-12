import 'package:fit_life/mvvm/object/entity/session/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_workout.freezed.dart';
part 'daily_workout.g.dart';

@freezed
class DailyWorkout with _$DailyWorkout {
  const factory DailyWorkout({
    int? id,
    required String name,
    required String description,
    int? totalMinute,
    double? caloTarget,
    int? time,
    int? workoutDuration,
    int? numberRound,
    int? execPerRound,
    int? timeForEachExe,
    int? breakTime,
    List<Session>? sessions,
  }) = _DailyWorkout;

  factory DailyWorkout.fromJson(Map<String, dynamic> json) =>
      _$DailyWorkoutFromJson(json);
}
