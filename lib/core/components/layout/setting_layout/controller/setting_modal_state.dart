import 'dart:ui';

import 'package:fit_life/core/components/layout/setting_layout/controller/setting_bloc.dart';
import 'package:fit_life/mvvm/me/entity/user/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'setting_modal_state.freezed.dart';

@freezed
class SettingModalState with _$SettingModalState {
  const factory SettingModalState({
    @Default(Appearance.light) Appearance appearance,
    @Default(Currencies.usd) Currencies currencies,
    @Default('en') String langCode,
    @Default(Locale('en', '')) Locale currentLocale,
    @Default('') String passCode,
    User? currentUser,
  }) = _SettingModalState;
}
