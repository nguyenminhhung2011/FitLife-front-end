import 'package:fit_life/clean_architectures/domain/usecase/base/base_usecase.dart';
import 'package:fit_life/mvvm/me/entity/user/user_entity.dart';
import 'package:injectable/injectable.dart';

@injectable
class SettingUseCase extends BaseUseCase<User> {
  SettingUseCase();

  @override
  Future<User?> getUserInfo(token) async => null;
  @override
  Future<bool> logOut({required String token}) async => true;
}
