import 'package:fit_life/mvvm/me/model/exercise/exercise_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_pagination.freezed.dart';
part 'exercise_pagination.g.dart';

@freezed
class ExercisePagination with _$ExercisePagination {
  const factory ExercisePagination({
    List<ExerciseModel>? content,
  }) = _ExercisePagination;

  factory ExercisePagination.fromJson(Map<String, dynamic> json) =>
      _$ExercisePaginationFromJson(json);
}
