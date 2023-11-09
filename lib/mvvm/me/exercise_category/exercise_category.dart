import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_category.freezed.dart';
part 'exercise_category.g.dart';

@freezed
class ExerciseCategory with _$ExerciseCategory {
  const factory ExerciseCategory({
    required String header,
    String? description,
    required int exCountable,
    required String level,
    required String image,
  }) = _ExerciseCategory;

  factory ExerciseCategory.fromJson(Map<String, dynamic> json) =>
      _$ExerciseCategoryFromJson(json);
}
