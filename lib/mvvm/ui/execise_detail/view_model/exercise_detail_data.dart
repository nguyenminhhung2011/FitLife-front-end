import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_detail_data.freezed.dart';

@freezed
class ExerciseDetailData with _$ExerciseDetailData {
  const factory ExerciseDetailData({Exercise? exercise}) = _ExerciseData;
}
