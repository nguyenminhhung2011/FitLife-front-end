import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/widgets/fit_life/exercise_category.dart';
import 'package:fit_life/mvvm/me/entity/upcoming_workout/upcoming_workout.dart';
import 'package:fit_life/mvvm/ui/fit_overview/view_model/fit_overview_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'fit_overview_state.dart';

part 'fit_overview_view_model.freezed.dart';

final fitOverViewNotifier =
    AutoDisposeStateNotifierProvider<FitOverViewViewModel, FitOverViewState>(
        (ref) => FitOverViewViewModel());

@injectable
class FitOverViewViewModel extends StateNotifier<FitOverViewState> {
  ///---------------
  FitOverViewData get data => state.data;
  FitOverViewViewModel() : super(const _Initial(data: FitOverViewData()));

  void onSelectedDate(List<DateTime> times) {
    state = _SelectedDataSuccess(data: data.copyWith(rangeDate: times));
  }

  void getUpcomingWorkout() {
    state = state.copyWith(data: data.copyWith(isLoadingUpcomingWorkout: true));

    Future.delayed(
      const Duration(seconds: 3),
      () {
        state = state.copyWith(
            data: state.data
                .copyWith(isLoadingUpcomingWorkout: false, upcomingWorkouts: [
          UpcomingWorkout(
            title: 'Dash Strength',
            startTime: DateTime(2021, 10, 10, 17, 30),
            minutes: 30,
            kCalo: 200,
          ),
        ]));
      },
    );
  }

  void getExerciseCategory() {
    state =
        state.copyWith(data: data.copyWith(isLoadingExerciseCategory: true));

    Future.delayed(
      const Duration(seconds: 3),
      () {
        state = state.copyWith(
          data: state.data.copyWith(
            isLoadingExerciseCategory: false,
            exerciseCategories: const [
              ExerciseCategory(
                header: 'Upper Body',
                description: 'This is description of upper body',
                exCountable: 21,
                level: 'Beginner ⚡ Advanced',
                image: ImageConst.banner1,
              ),
              ExerciseCategory(
                header: 'Cardio',
                description: 'This is description of Cardio',
                exCountable: 31,
                level: 'Medium ⚡ Advanced',
                image: ImageConst.banner2,
              ),
              ExerciseCategory(
                header: 'Stretch',
                description: 'This is description of Stretch',
                exCountable: 19,
                level: 'Beginner ⚡ Advanced',
                image: ImageConst.banner3,
              ),
            ],
          ),
        );
      },
    );
  }
}
