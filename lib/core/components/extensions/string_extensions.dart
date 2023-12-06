import 'dart:ui';

import 'package:fit_life/core/components/enum/frequency.dart';
import 'package:fit_life/core/components/enum/gender.dart';
import 'package:fit_life/core/components/enum/plan_type.dart';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  PlanType get toPlanType => switch (this) {
        "default" => PlanType.def,
        "ai" => PlanType.ai,
        _ => PlanType.user
      };

  Gender get toGender =>
      switch (toUpperCase()) { "MALE" => Gender.male, _ => Gender.female };

  Frequency get toFrequency => switch (toUpperCase()) {
        "MUCH" => Frequency.much,
        "VERY_MUCH" => Frequency.veryMuch,
        "AVERAGE" => Frequency.average,
        "LITTLE" => Frequency.little,
        _ => Frequency.notMuch
      };

  String get upCaseFirstCharacter =>
      isNotEmpty ? (this[0].toUpperCase() + substring(1, length)) : this;
}
