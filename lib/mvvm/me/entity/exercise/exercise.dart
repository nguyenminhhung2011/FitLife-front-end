import 'package:fit_life/mvvm/me/model/exercise/instruction_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required int id,
    required String name,
    required String description,
    String? bodyPart,
    double? caloriesPerMinute,
    String? videoUrl,
    int? set,
    int? reps,
    String? equipment,
    List<Instruction>? instructions,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
}
