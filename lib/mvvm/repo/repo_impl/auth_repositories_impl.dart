import 'dart:developer';

import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/core/components/network/data_state.dart';
import 'package:fit_life/mvvm/data/local/preferences.dart';
import 'package:fit_life/mvvm/data/remote/auth/auth_api.dart';
import 'package:fit_life/mvvm/repo/auth_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepositories)
class AuthRepositoriesImpl extends BaseApi implements AuthRepositories {
  final AuthApi _authApi;
  AuthRepositoriesImpl(this._authApi);

  @override
  Future<SResult<bool>> signIn(
      {required String email, required String password}) async {
    final body = {'username': email, 'password': password};
    try {
      final response = await getStateOf(
          request: () async => await _authApi.login(body: body));
      if (response is DataFailed) {
        return Either.left(
            AppException(message: response.dioError?.message ?? baseError));
      }
      final responseData = response.data;
      if (responseData == null) {
        return Either.left(AppException(message: dataNullError));
      }

      final isCreated = responseData.user?.userProfile?.created ?? false;

      ///[Print] log data
      log("🎉[Access] ${responseData.jwt}");
      log("🎉[Refresh] ${responseData.refreshToken}");
      log("🎉[isCreated] $isCreated");

      await CommonAppSettingPref.setAccessToken(responseData.jwt);
      await CommonAppSettingPref.setRefreshToken(responseData.refreshToken);
      await CommonAppSettingPref.setIsCreated(isCreated);
      return Either.right(isCreated);
    } catch (error) {
      return Either.left(AppException(message: error.toString()));
    }
  }

  @override
  Future<SResult<bool>> register(
      {required String email, required String password}) async {
    final body = {'username': email, 'password': password};
    try {
      final response = await getStateOf(
          request: () async => await _authApi.register(body: body));
      if (response is DataFailed) {
        return Either.left(
            AppException(message: response.dioError?.message ?? baseError));
      }
      final responseData = response.data;
      if (responseData == null) {
        return Either.left(AppException(message: dataNullError));
      }
      return const Either.right(true);
    } catch (error) {
      return Either.left(AppException(message: error.toString()));
    }
  }
}
