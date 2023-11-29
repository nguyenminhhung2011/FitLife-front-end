import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/token/token.dart';

abstract class AuthRepositories {
  Future<SResult<bool>> signIn(
      {required String email, required String password});
  Future<SResult<bool>> register(
      {required String email, required String password});
}
