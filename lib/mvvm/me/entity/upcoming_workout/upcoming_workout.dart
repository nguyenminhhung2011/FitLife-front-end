import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_workout.freezed.dart';
part 'upcoming_workout.g.dart';

@freezed
class UpcomingWorkout with _$UpcomingWorkout {
  const factory UpcomingWorkout({
    required DateTime startTime,
    required String title,
    String? description,
    String? image,
    int? minutes,
    int? kCalo,
    @Default(false) bool enableNotification,
  }) = _UpcomingWorkout;

  factory UpcomingWorkout.fromJson(Map<String, dynamic> json) =>
      _$UpcomingWorkoutFromJson(json);
}
