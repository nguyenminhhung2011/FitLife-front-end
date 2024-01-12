import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/object/entity/daily_workout/daily_workout.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'daily_plan_api.g.dart';

@injectable
@RestApi()
abstract class DailyPlanApi {
  static const String branch = "/workout/daily";
  static const String addDailyPlanApi = branch;
  static const String getDailyPlanApi = branch;
  static const String removeDailyPlanApi = '$branch/delete';

  @factoryMethod
  factory DailyPlanApi(Dio dio) = _DailyPlanApi;

  @GET(getDailyPlanApi)
  Future<HttpResponse<List<DailyWorkout>?>> getDailyPlanById(
      @Query('id') int id);

  @POST(addDailyPlanApi)
  Future<HttpResponse<DailyWorkout>> addDailyPlan(
    @Query('id') int id,
    @Body() Map<String, dynamic> body,
  );

  @POST(removeDailyPlanApi)
  Future<HttpResponse> removeDailyPlan(@Query('id') int id);
}
