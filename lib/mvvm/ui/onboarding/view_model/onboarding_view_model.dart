import 'package:fit_life/core/components/enum/frequency.dart';
import 'package:fit_life/core/components/enum/gender.dart';
import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/object/model/user/update_user_profile.dart';
import 'package:fit_life/mvvm/repositories/user_repositories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'onboarding_state.dart';

part 'onboarding_view_model.freezed.dart';

final onboardingStateNotifier =
    AutoDisposeStateNotifierProvider<OnboardingViewModel, OnboardingState>(
        (ref) => injector.get<OnboardingViewModel>());

@injectable
class OnboardingViewModel extends StateNotifier<OnboardingState> {
  final UserRepositories _userRepositories = injector.get<UserRepositories>();

  OnboardingViewModel() : super(const _Initial());

  Future<void> updateUserProfile({
    required Gender gender,
    required Frequency frequency,
    required double height,
    required double weight,
    required int birthDay,
    required String phone,
  }) async {
    state = const _Loading();
    await Future.delayed(const Duration(seconds: 2));
    state = (await _userRepositories.updateUserProfile(
      updateUserProfile: UpdateUserProfile(
        gender: gender,
        frequency: frequency,
        height: height,
        weight: weight,
        phone: phone,
      ),
    ))
        .fold(
      ifLeft: (error) => _UpdateProfileFailed(message: error.message),
      ifRight: (_) => const _UpdateProfileSuccess(),
    );
  }
}
