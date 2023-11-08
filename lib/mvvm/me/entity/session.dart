import 'package:fit_life/mvvm/me/entity/daily_workout.dart';
import 'package:fit_life/mvvm/me/entity/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  const factory Session({
    DailyWorkout? dailyWorkout,
    List<Exercise>? exercises,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}