import 'package:fit_life/core/components/enum/frequency.dart';
import 'package:fit_life/core/components/enum/gender.dart';
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
    String? level,
    String? currentPlan,
    String? phone,
    Frequency? frequency,
    Gender? gender,
  }) = _UserProfile;
}
