import 'package:fit_life/mvvm/me/entity/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_workout.freezed.dart';
part 'daily_workout.g.dart';

@freezed
class DailyWorkout with _$DailyWorkout {
  const factory DailyWorkout({
    required String name,
    required String description,
    double? caloTarget,
    DateTime? time,
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