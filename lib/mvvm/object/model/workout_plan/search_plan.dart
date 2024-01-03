import 'package:fit_life/mvvm/object/model/workout_plan/workout_plan_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_plan.g.dart';

@JsonSerializable()
class SearchPlan {
  @JsonKey(name: 'content')
  final List<WorkoutPlanModel> content;

  SearchPlan({required this.content});

  factory SearchPlan.fromJson(Map<String, dynamic> json) =>
      _$SearchPlanFromJson(json);

  Map<String, dynamic> toJson() => _$SearchPlanToJson(this);
}
