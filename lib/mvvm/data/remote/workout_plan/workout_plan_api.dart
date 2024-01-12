import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/object/model/workout_plan/search_plan.dart';
import 'package:fit_life/mvvm/object/model/workout_plan/workout_plan_model.dart';
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
  Future<HttpResponse<List<WorkoutPlanModel>?>> getAllWorkoutPlan();

  @POST(addWorkoutPlanApi)
  Future<HttpResponse<WorkoutPlanModel>> addWorkoutPlan(
      @Body() Map<String, dynamic> body);

  @GET(searchWorkoutPlanApi)
  Future<HttpResponse<SearchPlan>> searchWorkoutPlan(
      {@Body() required Map<String, dynamic> body});

  @POST(removeWorkoutPlanApi)
  Future<HttpResponse> removeWorkoutPlan(@Query('id') int id);
}
