import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SettingExerciseActions {
  numberRound,
  numberOfExerciseRound,
  startWithBoot,
  randomMix,
  timForEach,
  transferTime,
  breakTime,
  leave
}

extension SettingExerciseActionExtension on SettingExerciseActions {
  String get renderText => switch (this) {
        SettingExerciseActions.numberRound => "Number round",
        SettingExerciseActions.numberOfExerciseRound =>
          "Number of exercises per round",
        SettingExerciseActions.startWithBoot => "Start with boot",
        SettingExerciseActions.randomMix => "Random mix",
        SettingExerciseActions.timForEach => "Time for each lesson",
        SettingExerciseActions.transferTime => "Transfer time",
        SettingExerciseActions.breakTime => " Break time",
        _ => "Leave"
      };

  IconData get renderIcon => switch (this) {
        SettingExerciseActions.numberRound => Icons.cached_outlined,
        SettingExerciseActions.numberOfExerciseRound =>
          Icons.three_g_mobiledata,
        SettingExerciseActions.startWithBoot => Icons.sports_gymnastics,
        SettingExerciseActions.randomMix => CupertinoIcons.fullscreen_exit,
        SettingExerciseActions.timForEach => Icons.timelapse_sharp,
        SettingExerciseActions.transferTime => CupertinoIcons.bell,
        SettingExerciseActions.breakTime => Icons.wind_power,
        _ => Icons.air_rounded
      };

  bool get isSwitch =>
      this == SettingExerciseActions.startWithBoot ||
      this == SettingExerciseActions.randomMix;
  bool get isNumber =>
      this == SettingExerciseActions.numberRound ||
      this == SettingExerciseActions.numberOfExerciseRound;
  bool get isRelax => this == SettingExerciseActions.leave;
  bool get isTime =>
      this == SettingExerciseActions.timForEach ||
      this == SettingExerciseActions.breakTime ||
      this == SettingExerciseActions.transferTime;
  String? renderTrailing({required String strData}) => isSwitch
      ? null
      : "${isRelax ? 'After ' : ''}$strData${isRelax ? ' exercises' : isTime ? ' s' : ''}";
}
