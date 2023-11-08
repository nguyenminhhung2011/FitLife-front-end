import 'package:freezed_annotation/freezed_annotation.dart';
import 'exercise.dart';

part 'upcoming_schedule_exercise.freezed.dart';
part 'upcoming_schedule_exercise.g.dart';

@freezed
class UpcomingScheduleExercise with _$UpcomingScheduleExercise {
  const factory UpcomingScheduleExercise({
    DateTime? startAt,
    DateTime? endAt,
    required String title,
    required String description,
    int? minutes,
     List<Exercise>? exercises,
  }) = _UpcomingScheduleExercise;

  factory UpcomingScheduleExercise.fromJson(Map<String, dynamic> json) =>
      _$UpcomingScheduleExerciseFromJson(json);
}
