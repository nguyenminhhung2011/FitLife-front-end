import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/user/health_overview.dart';
import 'package:fit_life/mvvm/me/entity/user/user_entity.dart';

abstract class UserRepositories {
  Future<SResult<bool>> updateUser(HealthOverview healthOverview);
}
