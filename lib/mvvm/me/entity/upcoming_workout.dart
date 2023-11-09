import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_workout.freezed.dart';
part 'upcoming_workout.g.dart';

@freezed
class UpcomingWorkout with _$UpcomingWorkout {
  const factory UpcomingWorkout({
    required String title,
    String? description,
    required DateTime startTime,
    int? minutes,
    int? kCalo,
    String? image,
    @Default(false) bool enableNotification,
  }) = _UpcomingWorkout;

  factory UpcomingWorkout.fromJson(Map<String, dynamic> json) =>
      _$UpcomingWorkoutFromJson(json);
}
