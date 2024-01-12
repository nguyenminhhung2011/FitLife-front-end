import 'package:fit_life/clean_architectures/domain/usecase/base/base_usecase.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/user/user_entity.dart';
import 'package:fit_life/mvvm/object/entity/workout_plan/workout_plan.dart';
import 'package:fit_life/mvvm/object/model/user/change_password.dart';
import 'package:fit_life/mvvm/repositories/user_repositories.dart';
import 'package:injectable/injectable.dart';

@injectable
class SettingUseCase extends BaseUseCase<User> {
  final UserRepositories _userRepositories;
  SettingUseCase(this._userRepositories);

  @override
  Future<User?> getUserInfo(token) async =>
      (await _userRepositories.getUserProfile())
          .fold(ifLeft: (_) => null, ifRight: (rData) => rData);
  @override
  Future<bool> logOut({required String token}) async => true;

  Future<SResult<bool>> changePassword({required ChangePassword changePass}) =>
      _userRepositories.changePassword(request: changePass);

  Future<SResult<bool>> addFavoriteExercise({required int exerciseId}) =>
      _userRepositories.addFavoriteExercise(exerciseId);

  Future<SResult<bool>> addFavoriteNews({required int newsId}) =>
      _userRepositories.addFavoriteNews(newsId);

  Future<SResult<WorkoutPlan>> getCurrentPlan() =>
      _userRepositories.getCurrentPlan();

  Future<SResult<WorkoutPlan>> changeCurrentPlan(int currentPlan) =>
      _userRepositories.changeCurrentPlan(currentPlan);
}
