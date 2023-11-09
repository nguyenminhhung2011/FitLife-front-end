import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/upcoming_schedule/upcoming_schedule_exercise.dart';
import 'package:fit_life/mvvm/ui/overview/view_model/overview_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'overview_state.dart';

part 'overview_view_model.freezed.dart';

final overviewStateNotifier =
    AutoDisposeStateNotifierProvider<OverviewViewModel, OverviewState>(
        (ref) => OverviewViewModel());

@injectable
class OverviewViewModel extends StateNotifier<OverviewState> {
  OverviewViewModel() : super(const _Initial(data: OverviewData()));

  void getUpcomingScheduleExercise() {
    state = state.copyWith(
      data: state.data.copyWith(
        isLoadingUpcomingScheduleExercise: true,
      ),
    );

    Future.delayed(
      const Duration(seconds: 3),
      () {
        state = _Success(
          data: state.data.copyWith(
            isLoadingUpcomingScheduleExercise: false,
            upcomingScheduleExercise: UpcomingScheduleExercise(
              title: 'Test header yoga',
              description: 'This is description of yoga exercise yeah yeah',
              minutes: 30,
              exercises: const [
                Exercise(
                  name: 'Test header yoga',
                  description: 'This is description of yoga exercise yeah yeah',
                ),
                Exercise(
                  name: 'Test header yoga',
                  description: 'This is description of yoga exercise yeah yeah',
                )
              ],
              startAt: DateTime.now(),
              endAt: DateTime.now().subtract(const Duration(days: 3)),
            ),
          ),
        );
      },
    );
  }
}
