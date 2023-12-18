import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/enum/plan_type.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/mvvm/data/remote/plan/plan_api.dart';
import 'package:fit_life/mvvm/me/entity/chart/chart.dart';
import 'package:fit_life/mvvm/me/entity/plan/add_plan_dto.dart';
import 'package:fit_life/mvvm/me/entity/plan/current_plan.dart';
import 'package:fit_life/mvvm/me/entity/plan_detail/plan_detail.dart';
import 'package:fit_life/mvvm/me/entity/request/get_chart_request.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';
import 'package:fit_life/mvvm/repo/plan_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PlanRepositories)
class PlanRepositoriesImpl extends BaseApi implements PlanRepositories {
  final PlanApi planApi;
  PlanRepositoriesImpl(this.planApi);

  @override
  Future<SResult<CurrentPlan>> getCurrentPlan() async {
    // 💥 Update later when have api
    // try {
    //   final call =
    //       await getStateOf(request: () async => await planApi.getCurrentPlan());
    //   if (call is DataFailed) {
    //     return Either.left(
    //       AppException(
    //           message: call.dioError?.message ?? ErrorConstant.basicError),
    //     );
    //   }
    //   if (call.data == null) {
    //     return Either.left(AppException(message: ErrorConstant.dataNullError));
    //   }
    //   return Either.right(call.data!.toCurrentPlan);
    // } catch (e) {
    //   return Either.left(AppException(message: e.toString()));
    // }
    return Either.right(
      CurrentPlan(
        id: "current plan id ",
        name: "Fitness plan",
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(days: 10)),
        totalCaloriesBurn: 280,
        type: PlanType.ai,
        goal: "Getting back in shape",
      ),
    );
  }

  @override
  Future<SResult<List<WorkoutPlan>>> fetchPlanByFilter({
    required String content,
    required DateTime timeStart,
    required DateTime timeFinish,
    required int currentPage,
    required int perPage,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    return Either.right([
      ...List.generate(
        perPage,
        (index) => WorkoutPlan(
          name: 'How to lose 10kg in 14 days',
          description: "Target to lose 10kg in 3 months",
          startDate: DateTime.now(),
          endDate: DateTime.now().add(const Duration(days: 14)),
        ),
      )
    ]);
  }

  @override
  Future<SResult<List<WorkoutPlan>>> getTopPlan({int topCountable = 2}) async =>
      Either.right(
        [
          ...List.generate(
            2,
            (index) => WorkoutPlan(
              name: 'How to lose 10kg in 14 days',
              description: "Target to lose 10kg in 3 months",
              startDate: DateTime.now(),
              endDate: DateTime.now().add(const Duration(days: 14)),
            ),
          )
        ],
      );

  @override
  Future<SResult<WorkoutPlan>> createPlan({required AddPlanDto plan}) async {
    await Future.delayed(const Duration(seconds: 3));

    return Either.right(
      WorkoutPlan(
        name: plan.title ?? "",
        description: plan.goal ?? "",
        startDate: plan.timeStart ?? DateTime.now(),
        endDate:
            plan.timeFinish ?? DateTime.now().add(const Duration(days: 14)),
      ),
    );
  }

  @override
  Future<SResult<PlanDetail>> getDetailPlan({required String id}) async {
    await Future.delayed(const Duration(seconds: 3));

    return Either.right(
      PlanDetail(
        name: "Beginner plan",
        description: "This is a plan",
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(days: 120)),
        progress: 0.5,
        dailyWorkouts: [],
      ),
    );
  }

  @override
  Future<SResult<List<Chart>>> getChartView(
          {required GetChartRequest getChartRequest}) async =>
      await apiCall(
        mapper: (result) => result.map((e) => e.toEntity).toList(),
        request: () async =>
            await planApi.getChartView(body: getChartRequest.toJson),
      );
}
