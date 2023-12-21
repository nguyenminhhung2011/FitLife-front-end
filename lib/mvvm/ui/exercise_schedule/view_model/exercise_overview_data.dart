import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_overview_data.freezed.dart';

@freezed
class ExerciseOverviewData with _$ExerciseOverviewData {
  const factory ExerciseOverviewData({
    Session? sessionPlan,

    /// Support for fetching exercise list inside the create exercise bottom sheet view
    List<Exercise>? exercises,
    @Default(false) bool isLoadingExercise,
    @Default(0) int page,
    @Default(false) bool isLastPage,
  }) = _ExerciseOverviewData;
}
