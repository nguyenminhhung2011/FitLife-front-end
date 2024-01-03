import 'package:fit_life/core/components/enum/plan_type.dart';
import 'package:fit_life/mvvm/object/entity/daily_workout/daily_workout.dart';
import 'package:fit_life/mvvm/object/entity/workout_plan/workout_plan.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_plan_model.g.dart';

@JsonSerializable()
class WorkoutPlanModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'startDate')
  final int? startDate;

  @JsonKey(name: 'endDate')
  final int? endDate;

  @JsonKey(name: 'type')
  final String? type;

  final List<DailyWorkout>? dailyWorkouts;
  const WorkoutPlanModel({
    required this.id,
    required this.name,
    required this.description,
    this.startDate,
    this.endDate,
    this.type,
    this.dailyWorkouts,
  });

  factory WorkoutPlanModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutPlanModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkoutPlanModelToJson(this);

  WorkoutPlan toEntity() {
    return WorkoutPlan(
      id: id,
      name: name,
      description: description,
      startDate: startDate,
      endDate: endDate,
      type: PlanType.values.firstWhere(
          (element) => element.name.toString().toUpperCase() == type),
      dailyWorkouts: dailyWorkouts,
    );
  }
}
