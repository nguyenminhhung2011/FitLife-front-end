import 'dart:developer';
import 'package:flutter_base_clean_architecture/mvvm/data/local/preferences.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/splash/view_model/splash_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
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
    int expiredTime = CommonAppSettingPref.getExpiredTime();

    if (accessToken.isNotEmpty ||
        refreshToken.isNotEmpty ||
        expiredTime != -1) {
      final expiredTimeParsed =
          DateTime.fromMillisecondsSinceEpoch(expiredTime);
      log("[Access] $accessToken\n[Refresh] $refreshToken\n[Expired time] ${DateFormat().add_yMd().add_Hm().format(expiredTimeParsed)}");

      final isExpired = DateTime.now().isAfter(expiredTimeParsed);
      // ignore: avoid_print
      print(expiredTimeParsed);

      if (!isExpired) {
        state = _IsAuth(data: data);
        return;
      }
    }
    state = _IsNotAuth(data: data);
  }
}
