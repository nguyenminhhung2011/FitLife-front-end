import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/me/model/chart/chart_model.dart';
import 'package:fit_life/mvvm/me/model/plan/plan_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'plan_api.g.dart';

@RestApi()
@injectable
abstract class PlanApi {
  static const String branch = "/workout";
  static const String getCurrentPlanApi = "/plan/current";
  static const String getChartViewApi = "$branch/get-chart-view";

  @factoryMethod
  factory PlanApi(Dio dio) = _PlanApi;

  @GET(getCurrentPlanApi)
  Future<HttpResponse<PlanModel?>> getCurrentPlan();

  @GET(getChartViewApi)
  Future<HttpResponse<List<ChartModel>>> getChartView(
      {@Body() required Map<String, dynamic> body});
}
