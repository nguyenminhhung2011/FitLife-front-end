import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_workout_dto.freezed.dart';
part 'daily_workout_dto.g.dart';

@freezed
class DailyWorkoutDTO with _$DailyWorkoutDTO {
  const factory DailyWorkoutDTO({
    required String name,
    required String description,
    double? caloTarget,
    int? time,
    int? workoutDuration,
    int? numberRound,
    int? execPerRound,
    int? timeForEachExe,
    int? breakTime,
  }) = _DailyWorkoutDTO;

  factory DailyWorkoutDTO.fromJson(Map<String, dynamic> json) =>
      _$DailyWorkoutDTOFromJson(json);
}
