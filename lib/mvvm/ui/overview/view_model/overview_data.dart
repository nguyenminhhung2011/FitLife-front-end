import 'package:fit_life/mvvm/me/entity/upcoming_schedule/upcoming_schedule_exercise.dart';
import 'package:fit_life/mvvm/me/entity/upcoming_session/upcoming_session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_data.freezed.dart';

@freezed
class OverviewData with _$OverviewData {
  const factory OverviewData({
    /// Upcoming schedule exercise

    UpComingSession? upComingSession,

    /// Is loading upcoming schedule exercise finish or not
    @Default(false) bool isLoadingUpcomingScheduleExercise,
  }) = _OverviewData;
}
