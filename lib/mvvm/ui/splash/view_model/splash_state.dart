part of 'splash_view_model.dart';

@freezed
class SplashState with _$SplashState {
  const SplashState._();
  const factory SplashState.initial({required SplashData data}) = _Initial;
  const factory SplashState.isAuth(
      {required SplashData data, required bool isCreated}) = _IsAuth;
  const factory SplashState.isNotAuth({required SplashData data}) = _IsNotAuth;
  const factory SplashState.loading({required SplashData data}) = _Loading;

  bool get loading => this is _Loading;
}
