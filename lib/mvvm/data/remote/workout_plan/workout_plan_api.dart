import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'workout_plan_api.g.dart';

@injectable
@RestApi()
abstract class WorkoutPlanApi {
  static const String branch = "/workout";
  static const String addWorkoutPlanApi = branch;
  static const String getWorkoutPlanApi = branch;
  static const String searchWorkoutPlanApi = '$branch/search';
  static const String removeWorkoutPlanApi = '$branch/delete';

  @factoryMethod
  factory WorkoutPlanApi(Dio dio) = _WorkoutPlanApi;

  @GET(getWorkoutPlanApi)
  Future<HttpResponse<List<WorkoutPlan>?>> getAllWorkoutPlan();

  @POST(addWorkoutPlanApi)
  Future<HttpResponse<WorkoutPlan>> addWorkoutPlan(
      @Body() Map<String, dynamic> body);

  @GET(searchWorkoutPlanApi)
  Future<HttpResponse<List<WorkoutPlan>?>> searchWorkoutPlan(
    @Query('name') String? name, {
    @Query('startDate') int? startDate,
    @Query('endDate') int? endDate,
    @Query('page') int? page,
    @Query('size') int? size,
  });

  @POST(removeWorkoutPlanApi)
  Future<HttpResponse> removeWorkoutPlan(@Query('id') int id);
}
