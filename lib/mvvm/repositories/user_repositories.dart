import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/user/user_entity.dart';
import 'package:fit_life/mvvm/object/entity/workout_plan/workout_plan.dart';
import 'package:fit_life/mvvm/object/model/user/change_password.dart';
import 'package:fit_life/mvvm/object/model/user/update_user_profile.dart';

abstract class UserRepositories {
  Future<SResult<bool>> updateUserProfile(
      {required UpdateUserProfile updateUserProfile});
  Future<SResult<User>> getUserProfile();
  Future<SResult<bool>> changePassword({required ChangePassword request});
  Future<SResult<bool>> addFavoriteExercise(int exerciseId);
  Future<SResult<bool>> addFavoriteNews(int newsId);
  Future<SResult<WorkoutPlan>> changeCurrentPlan(int planId);
  Future<SResult<WorkoutPlan>> getCurrentPlan();
}
