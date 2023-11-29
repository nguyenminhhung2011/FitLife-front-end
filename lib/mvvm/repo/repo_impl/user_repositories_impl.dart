import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/core/components/network/data_state.dart';
import 'package:fit_life/mvvm/data/local/preferences.dart';
import 'package:fit_life/mvvm/data/remote/user/user_api.dart';
import 'package:fit_life/mvvm/me/entity/user/user_entity.dart';
import 'package:fit_life/mvvm/me/model/user/update_user_profile.dart';
import 'package:fit_life/mvvm/repo/user_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepositories)
class UserRepositoriesImpl extends BaseApi implements UserRepositories {
  final UserApi _userApi;

  UserRepositoriesImpl(this._userApi);

  @override
  Future<SResult<bool>> updateUserProfile(
      {required UpdateUserProfile updateUserProfile}) async {
    final response = await getStateOf(
      request: () async => await _userApi
          .updateUserProfile(body: {"userProfile": updateUserProfile.toJson()}),
    );
    if (response is DataFailed) {
      return Either.left(
          AppException(message: response.dioError?.message ?? baseError));
    }
    if (response.data == null) {
      return Either.left(AppException(message: dataNullError));
    }
    await CommonAppSettingPref.setIsCreated(true);
    return const Either.right(true);
  }

  @override
  Future<SResult<User>> getUserProfile() async {
    final response =
        await getStateOf(request: () async => await _userApi.getMyProfile());
    if (response is DataFailed) {
      return Either.left(
        AppException(message: response.dioError?.message ?? baseError),
      );
    }
    final responseData = response.data;
    if (responseData == null) {
      return Either.left(AppException(message: dataNullError));
    }
    return Either.right(responseData.toEntity);
  }
}
