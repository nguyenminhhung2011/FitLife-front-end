import 'package:fit_life/mvvm/ui/execise_detail/view_model/exercise_detail_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'exercise_detail_state.dart';
part 'exercise_detail_view_model.freezed.dart';

@injectable
class ExerciseDetailViewModel extends StateNotifier<ExerciseDetailState> {
  ExerciseDetailViewModel() : super(const _Initial(data: ExerciseDetailData()));
}
