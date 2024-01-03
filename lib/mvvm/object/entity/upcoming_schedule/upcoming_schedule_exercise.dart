import 'package:freezed_annotation/freezed_annotation.dart';
import '../exercise/exercise.dart';

part 'upcoming_schedule_exercise.freezed.dart';
part 'upcoming_schedule_exercise.g.dart';

@freezed
class UpcomingScheduleExercise with _$UpcomingScheduleExercise {
  const factory UpcomingScheduleExercise({
    int? minutes,
    String? image,
    DateTime? endAt,
    DateTime? startAt,
    List<Exercise>? exercises,
    required String title,
    required String description,
  }) = _UpcomingScheduleExercise;

  factory UpcomingScheduleExercise.fromJson(Map<String, dynamic> json) =>
      _$UpcomingScheduleExerciseFromJson(json);
}
