import 'dart:developer';
import 'package:fit_life/mvvm/data/local/preferences.dart';
import 'package:fit_life/mvvm/ui/splash/view_model/splash_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'splash_state.dart';
part 'splash_view_model.freezed.dart';

final splashStateNotifier =
    AutoDisposeStateNotifierProvider<SplashViewModel, SplashState>(
        (ref) => SplashViewModel());

@injectable
class SplashViewModel extends StateNotifier<SplashState> {
  ///-----------------
  SplashData get data => state.data;

  SplashViewModel() : super(const _Initial(data: SplashData()));

  Future<void> isAuthCall() async {
    state = _Loading(data: data);
    await Future.delayed(const Duration(seconds: 3));
    String accessToken = CommonAppSettingPref.getAccessToken();
    String refreshToken = CommonAppSettingPref.getRefreshToken();
    bool isCreated = CommonAppSettingPref.getIsCreated();

    if (accessToken.isNotEmpty || refreshToken.isNotEmpty) {
      log("🎉 [Access] $accessToken\n🎉 [Refresh] $refreshToken\n");

      state = _IsAuth(data: data, isCreated: isCreated);
      return;
    }
    state = _IsNotAuth(data: data);
  }
}
