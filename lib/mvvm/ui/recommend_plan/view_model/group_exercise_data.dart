import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_exercise_data.freezed.dart';

@freezed
class GroupExerciseData with _$GroupExerciseData {
  const factory GroupExerciseData({
    required List<ExerciseCategory> exercises,
    @Default(false) bool isGetExerciseLoading, 
  }) = _GroupExerciseData;
}
