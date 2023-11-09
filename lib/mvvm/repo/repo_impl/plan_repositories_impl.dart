import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/core/components/network/data_state.dart';
import 'package:fit_life/core/components/network/error_constant.dart';
import 'package:fit_life/mvvm/data/remote/plan/plan_api.dart';
import 'package:fit_life/mvvm/me/entity/plan/current_plan.dart';
import 'package:fit_life/mvvm/repo/plan_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PlanRepositories)
class PlanRepositoriesImpl extends BaseApi implements PlanRepositories {
  final PlanApi planApi;
  PlanRepositoriesImpl(this.planApi);

  @override
  Future<SResult<CurrentPlan>> getCurrentPlan() async {
    try {
      final call =
          await getStateOf(request: () async => await planApi.getCurrentPlan());
      if (call is DataFailed) {
        return Either.left(
          AppException(
              message: call.dioError?.message ?? ErrorConstant.basicError),
        );
      }
      if (call.data == null) {
        return Either.left(AppException(message: ErrorConstant.dataNullError));
      }
      return Either.right(call.data!.toCurrentPlan);
    } catch (e) {
      return Either.left(AppException(message: e.toString()));
    }
  }
}
