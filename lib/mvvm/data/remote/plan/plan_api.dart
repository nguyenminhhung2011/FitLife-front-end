import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/me/model/plan/plan_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'plan_api.g.dart';

@RestApi()
@injectable
abstract class PlanApi {
  static const String branch = "";
  static const String getCurrentPlanApi = "/plan/current";

  @factoryMethod
  factory PlanApi(Dio dio) = _PlanApi;

  @GET(getCurrentPlanApi)
  Future<HttpResponse<PlanModel?>> getCurrentPlan(); 
}
