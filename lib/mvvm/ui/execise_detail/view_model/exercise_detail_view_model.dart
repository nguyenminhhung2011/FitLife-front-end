import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/repo/exercise_repositories.dart';
import 'package:fit_life/mvvm/ui/execise_detail/view_model/exercise_detail_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'exercise_detail_state.dart';

part 'exercise_detail_view_model.freezed.dart';

late AutoDisposeStateNotifierProvider<ExerciseDetailViewModel,
    ExerciseDetailState> exerciseDetailStateNotifier;

@injectable
class ExerciseDetailViewModel extends StateNotifier<ExerciseDetailState> {
  final _exerciseRepositories = injector.get<ExerciseRepositories>();
  final _exerciseId;
  ExerciseDetailViewModel(@factoryParam int exerciseId)
      : _exerciseId = exerciseId,
        super(const _Initial(data: ExerciseDetailData()));

  ExerciseDetailData get data => state.data;

  Future<void> getExerciseById() async {
    state = _Loading(data: data);
    final response = await _exerciseRepositories.getExerciseById(_exerciseId);
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) =>
          _GetExerciseByIdFailed(data: data, message: error.message),
      ifRight: (rData) => _GetExerciseByIdSuccess(
        data: data.copyWith(exercise: rData),
      ),
    );
  }
}
