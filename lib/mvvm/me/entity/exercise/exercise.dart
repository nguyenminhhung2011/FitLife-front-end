import 'package:fit_life/mvvm/me/model/exercise/instruction_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required int id,
    required String name,
     String? description,
    String? bodyPart,
    double? caloriesPerMinute,
    String? videoUrl,
    String? target,
    String? equipment,
    int? set,
    int? reps,
    List<Instruction>? instructions,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
}
