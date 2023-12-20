import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_overview_data.freezed.dart';

@freezed
class ExerciseOverviewData with _$ExerciseOverviewData {
  const factory ExerciseOverviewData({
    Session? sessionPlan,
    List<String>? equipment,
  }) = _ExerciseOverviewData;
}
