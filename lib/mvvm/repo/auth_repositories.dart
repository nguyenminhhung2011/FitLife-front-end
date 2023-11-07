import 'package:fit_life/mvvm/me/entity/token/token.dart';

abstract class AuthRepositories {
  Future<Token?> signIn({required String email, required String password});
  Future<Token?> register({required String email, required String password});
}
