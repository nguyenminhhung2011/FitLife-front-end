part of 'onboarding_view_model.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const OnboardingState._();
  const factory OnboardingState.initial() = _Initial;
  const factory OnboardingState.loading() = _Loading;
  const factory OnboardingState.updateProfileSuccess() = _UpdateProfileSuccess;
  const factory OnboardingState.updateProfileFailed({required String message}) =
      _UpdateProfileFailed;

  bool get loading => this is _Loading;
}
