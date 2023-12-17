import 'package:fit_life/mvvm/me/entity/custom_exercise/custom_exercise.dart';
import 'package:fit_life/mvvm/me/model/exercise/exercise_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'custom_exercise_model.g.dart';

@JsonSerializable()
class CustomExerciseModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'time')
  final int time;

  @JsonKey(name: 'difficulty')
  final String difficulty;

  @JsonKey(name: 'exercise')
  final ExerciseModel exercise;

  @JsonKey(name: 'rep')
  final int rep;

  @JsonKey(name: 'weight')
  final int weight;

  @JsonKey(name: 'calories')
  final int calories;

  CustomExerciseModel({
    required this.id,
    required this.time,
    required this.difficulty,
    required this.exercise,
    required this.rep,
    required this.weight,
    required this.calories,
  });

  factory CustomExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$CustomExerciseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomExerciseModelToJson(this);

  CustomExercise get toEntity => CustomExercise(
        id: id,
        time: time,
        difficulty: difficulty,
        exercise: exercise.toEntity,
        rep: rep,
        calories: calories,
        weight: weight,
      );
}
