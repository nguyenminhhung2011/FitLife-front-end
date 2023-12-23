import 'package:fit_life/core/components/enum/frequency.dart';
import 'package:fit_life/core/components/enum/gender.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/news_health/news_health.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_entity.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required int id,
    required double weight,
    required double height,
    required bool created,
    DateTime? birthDay,
    int? currentPlanId,
    String? level,
    String? currentPlan,
    String? phone,
    Frequency? frequency,
    Gender? gender,
    @Default([]) List<Exercise> favoriteExercises,
    @Default([]) List<NewsHealth> favoriteNews,
  }) = _UserProfile;
}
