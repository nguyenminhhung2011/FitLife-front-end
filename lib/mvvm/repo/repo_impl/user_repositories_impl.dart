import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/user/health_overview.dart';
import 'package:fit_life/mvvm/repo/user_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepositories)
class UserRepositoriesImpl extends UserRepositories {
  @override
  Future<SResult<bool>> updateUser(HealthOverview healthOverview) async {
    return const Either.right(true);
  }
}
