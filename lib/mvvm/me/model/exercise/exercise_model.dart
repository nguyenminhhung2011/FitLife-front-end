import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/model/exercise/instruction_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exercise_model.g.dart';

@JsonSerializable()
class ExerciseModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'exerciseCategory')
  final String? exerciseCategory;

  @JsonKey(name: 'caloriesPerMinute')
  final double? caloriesPerMinute;

  @JsonKey(name: 'sets')
  final int? sets;

  @JsonKey(name: 'reps')
  final int? reps;

  @JsonKey(name: 'target')
  final String target;

  @JsonKey(name: 'gifUrl')
  final String gifUrl;

  @JsonKey(name: 'equipment')
  final String? equipment;

  @JsonKey(name: 'bodyPart')
  final String bodyPart;

  @Default([])
  @JsonKey(name: 'instructions')
  final List<InstructionModel>? instructions;

  ExerciseModel({
    required this.id,
    required this.name,
    this.description,
    this.exerciseCategory,
    this.caloriesPerMinute,
    this.sets,
    this.reps,
    required this.target,
    required this.gifUrl,
    this.equipment,
    required this.bodyPart,
    @Default([]) this.instructions,
  });

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseModelToJson(this);

  Exercise get toEntity => Exercise(
        id: id,
        name: name,
        description: description ?? "",
        set: sets,
        reps: reps,
        videoUrl: gifUrl,
        bodyPart: bodyPart,
      );
}
