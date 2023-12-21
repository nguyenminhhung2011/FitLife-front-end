import 'package:fit_life/mvvm/me/entity/calories_chart/calories_chart.dart';
import 'package:fit_life/mvvm/me/entity/chart/fit_overview.dart';
import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fit_overview_data.freezed.dart';

@freezed
class FitOverViewData with _$FitOverViewData {
  const factory FitOverViewData({
    @Default([]) List<DateTime> rangeDate,

    /// List upcoming workout
    List<Session>? upcomingSessions,

    /// List exercise category
    List<BodyPart>? exerciseCategories,
    FitOverview? overviewData,
    @Default(false) bool isLoadingCaloriesChart,

    /// check loading upcoming workout status
    @Default(false) bool isLoadingUpcomingWorkout,

    /// check loading exercise category status
    @Default(false) bool isLoadingBodyPart,
    required CaloriesChart caloriesChart,
  }) = _FitOverViewData;
}
