import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_exercise.freezed.dart';
part 'custom_exercise.g.dart';

@freezed
class CustomExercise with _$CustomExercise {
  const factory CustomExercise({
    required int id,
    required int time,
    required String difficulty,
    required Exercise exercise,
    required int rep,
    required int weight,
    required int calories,
  }) = _CustomExercise;

  factory CustomExercise.fromJson(Map<String, dynamic> json) =>
      _$CustomExerciseFromJson(json);
}
