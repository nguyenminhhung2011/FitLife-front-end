import 'package:fit_life/core/components/widgets/fit_life/exercise_category.dart';
import 'package:fit_life/mvvm/me/entity/upcoming_workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fit_overview_data.freezed.dart';

@freezed
class FitOverViewData with _$FitOverViewData {
  const factory FitOverViewData({
    @Default([]) List<DateTime> rangeDate,

    /// List upcoming workout
    List<UpcomingWorkout>? upcomingWorkouts,

    /// check loading upcoming workout status
    @Default(false) bool isLoadingUpcomingWorkout,

    /// List exercise category
    List<ExerciseCategory>? exerciseCategories,

    /// check loading exercise category status
    @Default(false) bool isLoadingExerciseCategory,
  }) = _FitOverViewData;
}
