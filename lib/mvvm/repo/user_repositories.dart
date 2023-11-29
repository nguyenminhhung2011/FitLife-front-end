import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/user/user_entity.dart';
import 'package:fit_life/mvvm/me/model/user/update_user_profile.dart';

abstract class UserRepositories {
  Future<SResult<bool>> updateUserProfile(
      {required UpdateUserProfile updateUserProfile});
  Future<SResult<User>> getUserProfile();
}
