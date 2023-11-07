import 'package:fit_life/mvvm/me/entity/token/token.dart';
import 'package:fit_life/mvvm/repo/auth_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepositories)
class AuthRepositoriesImpl implements AuthRepositories {
  @override
  Future<Token?> signIn({required String email, required String password}) {
    throw UnimplementedError();
  }
  
  @override
  Future<Token?> register({required String email, required String password}) {
    throw UnimplementedError();
  }
}
