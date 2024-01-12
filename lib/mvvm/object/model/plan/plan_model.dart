import 'package:fit_life/core/components/extensions/string_extensions.dart';
import 'package:fit_life/mvvm/object/entity/plan/current_plan.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_model.g.dart';

@JsonSerializable()
class PlanModel {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'startDate')
  final int startDate;

  @JsonKey(name: 'endDate')
  final int endDate;

  @JsonKey(name: 'totalCaloriesBurn')
  final int totalCaloriesBurn;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'goal')
  final String goal;

  PlanModel({
    required this.id,
    required this.name,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.type,
    required this.goal,
    required this.totalCaloriesBurn,
  });

  factory PlanModel.fromJson(Map<String, dynamic> json) =>
      _$PlanModelFromJson(json);

  Map<String, dynamic> toJson() => _$PlanModelToJson(this);

  CurrentPlan get toCurrentPlan => CurrentPlan(
        id: id,
        name: name,
        startDate: DateTime.fromMillisecondsSinceEpoch(startDate),
        endDate: DateTime.fromMillisecondsSinceEpoch(endDate),
        totalCaloriesBurn: totalCaloriesBurn,
        type: type.toPlanType,
        goal: goal,
      );
}
