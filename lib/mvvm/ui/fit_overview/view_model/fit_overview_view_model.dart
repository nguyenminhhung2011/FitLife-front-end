import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/object/entity/calories_chart/calories_chart.dart';
import 'package:fit_life/mvvm/object/entity/request/get_chart_request.dart';
import 'package:fit_life/mvvm/repositories/exercise_repositories.dart';
import 'package:fit_life/mvvm/repositories/plan_repositories.dart';
import 'package:fit_life/mvvm/repositories/session_repositories.dart';
import 'package:fit_life/mvvm/ui/fit_overview/view_model/fit_overview_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'fit_overview_state.dart';

part 'fit_overview_view_model.freezed.dart';

final fitOverViewNotifier =
    AutoDisposeStateNotifierProvider<FitOverViewViewModel, FitOverViewState>(
        (ref) => injector.get<FitOverViewViewModel>());

@injectable
class FitOverViewViewModel extends StateNotifier<FitOverViewState> {
  final _exerciseRepositories = injector.get<ExerciseRepositories>();
  final _sessionRepositories = injector.get<SessionRepositories>();
  final _planRepositories = injector.get<PlanRepositories>();

  ///---------------
  FitOverViewData get data => state.data;
  FitOverViewViewModel()
      : super(
          _Initial(
            data: FitOverViewData(
              caloriesChart: CaloriesChart(
                heartRate: 0,
                todo: 0.0,
                calories: List.generate(7, (_) => 0),
              ),
            ),
          ),
        );

  void onSelectedDate(List<DateTime> times) {
    state = _SelectedDataSuccess(data: data.copyWith(rangeDate: times));
  }

  Future<void> getUpcomingSession() async {
    state = _Loading(data: data.copyWith(isLoadingUpcomingWorkout: true));

    final response = await _sessionRepositories.getUpComingSession();

    if (!mounted) return;

    state = response.fold(
      ifLeft: (error) => _GetUpComingFailed(
          data: data.copyWith(isLoadingUpcomingWorkout: false),
          message: error.message),
      ifRight: (rData) => _GetUpComingSuccess(
        data: data.copyWith(
            upcomingSessions: rData, isLoadingUpcomingWorkout: false),
      ),
    );
  }

  Future<void> getCaloriesChart() async {
    state = _Loading(data: data);
    final response = await _planRepositories.getChartView(
      getChartRequest: GetChartRequest(
        endDate: data.rangeDate.last
            .add(const Duration(days: 1))
            .millisecondsSinceEpoch,
        startDate: data.rangeDate.first.millisecondsSinceEpoch,
      ),
    );
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) => _GetCaloriesChartFailed(
        message: error.message,
        data: data.copyWith(isLoadingCaloriesChart: false),
      ),
      ifRight: (rData) => _GetCaloriesChartSuccess(
        data: data.copyWith(
          overviewData: rData,
          caloriesChart: data.caloriesChart.copyWith(
            calories: rData.chartData.map((e) => e.calories).toList(),
          ),
          isLoadingCaloriesChart: false,
        ),
      ),
    );
  }

  Future<void> getBodyPart() async {
    state = _Loading(data: data.copyWith(isLoadingBodyPart: true));
    final response = await _exerciseRepositories.getExerciseCategories(
        currentPage: 0, perPage: 3);
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) => _GetBodyPartFailed(
        data: data.copyWith(isLoadingBodyPart: false),
        message: error.message,
      ),
      ifRight: (rData) => _GetBodyPartSuccess(
        data: data.copyWith(
          exerciseCategories: rData,
          isLoadingBodyPart: false,
        ),
      ),
    );
  }
}
