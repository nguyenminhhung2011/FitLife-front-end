import 'package:fit_life/mvvm/ui/exercise_overview/ob/level.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_workout_plan_dto.freezed.dart';
part 'add_workout_plan_dto.g.dart';

@freezed
class AddWorkoutPlanDto with _$AddWorkoutPlanDto {
  const factory AddWorkoutPlanDto({
    required String name,
    required String description,
    int? startDate,
    int? endDate,
    @Default("DEFAULT") String type,
    String? preference,
    Level? fitnessLevelCurrent,
    String? fitnessGoal,
  }) = _AddWorkoutPlanDto;

  factory AddWorkoutPlanDto.fromJson(Map<String, dynamic> json) =>
      _$AddWorkoutPlanDtoFromJson(json);
}
