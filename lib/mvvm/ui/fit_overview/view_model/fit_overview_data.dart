import 'package:fit_life/mvvm/me/entity/calories_chart/calories_chart.dart';
import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/me/entity/upcoming_workout/upcoming_workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fit_overview_data.freezed.dart';

@freezed
class FitOverViewData with _$FitOverViewData {
  const factory FitOverViewData({
    @Default([]) List<DateTime> rangeDate,

    /// List upcoming workout
    List<UpcomingWorkout>? upcomingWorkouts,


    /// List exercise category
    List<BodyPart>? exerciseCategories,

    required CaloriesChart caloriesChart, 

    @Default(false) bool isLoadingCaloriesChart,
    /// check loading upcoming workout status
    @Default(false) bool isLoadingUpcomingWorkout,
    /// check loading exercise category status
    @Default(false) bool isLoadingBodyPart,
  }) = _FitOverViewData;
}
