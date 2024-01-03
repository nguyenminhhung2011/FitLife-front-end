import 'package:fit_life/mvvm/object/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/object/entity/session/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_overview_data.freezed.dart';

@freezed
class ExerciseOverviewData with _$ExerciseOverviewData {
  const factory ExerciseOverviewData({
    Session? sessionPlan,
    List<Exercise>? exercises,
    @Default(false) bool isLoadingExercise,
    @Default(0) int page,
    @Default(false) bool isLastPage,
    List<String>? equipment,
  }) = _ExerciseOverviewData;
}
