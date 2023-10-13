import 'package:flutter_base_clean_architecture/mvvm/me/entity/token/token.dart';

abstract class AuthRepositories {
  Future<Token?> signIn({required String email, required String password});
}
