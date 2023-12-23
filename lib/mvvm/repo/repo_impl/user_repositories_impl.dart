import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/core/components/network/data_state.dart';
import 'package:fit_life/mvvm/data/local/preferences.dart';
import 'package:fit_life/mvvm/data/remote/user/user_api.dart';
import 'package:fit_life/mvvm/me/entity/user/user_entity.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';
import 'package:fit_life/mvvm/me/model/user/change_password.dart';
import 'package:fit_life/mvvm/me/model/user/update_user_profile.dart';
import 'package:fit_life/mvvm/me/model/user/user_model.dart';
import 'package:fit_life/mvvm/me/model/workout_plan/workout_plan_model.dart';
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
  Future<SResult<User>> getUserProfile() async =>
      await apiCall<UserModel?, User>(
        mapper: (result) => result!.toEntity,
        request: () async => await _userApi.getMyProfile(),
      );

  @override
  Future<SResult<bool>> changePassword(
      {required ChangePassword request}) async {
    final response = await getStateOf(
      request: () async => await _userApi.changePassword(body: request.toMap),
    );
    if (response is DataFailed) {
      return Either.left(
        AppException(message: response.dioError?.message ?? baseError),
      );
    }
    return const Either.right(true);
  }

  @override
  Future<SResult<bool>> addFavoriteExercise(int exerciseId) async {
    final response = await getStateOf(
        request: () async => await _userApi.addFavoriteExercise(exerciseId));
    if (response is DataFailed) {
      return Either.left(
        AppException(message: response.dioError?.message ?? baseError),
      );
    }
    return const Either.right(true);
  }

  @override
  Future<SResult<bool>> addFavoriteNews(int newsId) async {
    final response = await getStateOf(
        request: () async => await _userApi.addFavoriteNews(newsId));

    if (response is DataFailed) {
      return Either.left(
        AppException(message: response.dioError?.message ?? baseError),
      );
    }
    return const Either.right(true);
  }

  @override
  Future<SResult<WorkoutPlan>> changeCurrentPlan(int planId) async =>
      await apiCall<WorkoutPlanModel, WorkoutPlan>(
        mapper: (result) => result.toEntity(),
        request: () async => await _userApi.changeCurrentPlan(planId),
      );
}
