import 'dart:ui';

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
      switch (this) { "man" => Gender.man, _ => Gender.woman };
}
