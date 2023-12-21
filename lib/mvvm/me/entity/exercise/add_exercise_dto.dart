import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_exercise_dto.freezed.dart';
part 'add_exercise_dto.g.dart';

@freezed
class AddExerciseDto with _$AddExerciseDto {
  const factory AddExerciseDto({
    required int exercise,
    required String difficulty,
    required int rep,
    required int weight,
  }) = _AddExerciseDto;

  factory AddExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$AddExerciseDtoFromJson(json);
}
