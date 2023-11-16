import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/pagination/pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'all_exercise_data.freezed.dart';

@freezed
class AllExerciseData with _$AllExerciseData {
  const factory AllExerciseData({
    required Pagination<Exercise> exercises,
    @Default("") String searchContent,
  }) = _AllExerciseData;
}