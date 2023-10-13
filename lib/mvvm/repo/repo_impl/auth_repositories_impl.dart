import 'package:flutter_base_clean_architecture/mvvm/me/entity/token/token.dart';
import 'package:flutter_base_clean_architecture/mvvm/repo/auth_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepositories)
class AuthRepositoriesImpl implements AuthRepositories {
  @override
  Future<Token?> signIn({required String email, required String password}) {
    throw UnimplementedError();
  }
}
