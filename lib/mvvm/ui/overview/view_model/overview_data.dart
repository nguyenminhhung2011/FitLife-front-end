import 'package:fit_life/mvvm/object/entity/news_health/news_health.dart';
import 'package:fit_life/mvvm/object/entity/upcoming_session/upcoming_session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_data.freezed.dart';

@freezed
class OverviewData with _$OverviewData {
  const factory OverviewData({
    /// Upcoming schedule exercise

    UpComingSession? upComingSession,

    /// Is loading upcoming schedule exercise finish or not
    @Default(false) bool isLoadingUpcomingScheduleExercise,
    @Default(false) bool isLoadingTopNews,
    List<NewsHealth>? news,
  }) = _OverviewData;
}
