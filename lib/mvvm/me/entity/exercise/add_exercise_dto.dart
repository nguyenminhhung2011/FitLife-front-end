import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_exercise_dto.freezed.dart';
part 'add_exercise_dto.g.dart';

@freezed
class AddExerciseDto with _$AddExerciseDto {
  const factory AddExerciseDto({
    required Exercise exercise,
    required DateTime? time,
    required String difficulty,
    required int reputation,
    required int weights,
  }) = _AddExerciseDto;

  factory AddExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$AddExerciseDtoFromJson(json);
}
