import 'package:fit_life/mvvm/object/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/object/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/object/entity/pagination/pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_exercise_data.freezed.dart';

@freezed
class AddExerciseData with _$AddExerciseData {
  const factory AddExerciseData({
    String? searchContent,
    String? bodyPart,
    Exercise? exerciseChosen,
    @Default(0) currentTab,
    required Pagination<Exercise> exercises,
    required List<BodyPart> bodyParts,
  }) = _AddExerciseData;
}
