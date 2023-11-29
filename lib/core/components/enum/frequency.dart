import 'package:fit_life/generated/l10n.dart';

enum Frequency { much, veryMuch, average, little, notMuch }

extension FrequencyExtension on Frequency {
  String get toFrequencyString => switch (this) {
        Frequency.much => "MUCH",
        Frequency.veryMuch => "VERY_MUCH",
        Frequency.average => "AVERAGE",
        Frequency.little => "LITTLE",
        _ => "NOT_MUCH"
      };

  String get toMainText => switch (this) {
        Frequency.much => S.current.many,
        Frequency.veryMuch => S.current.soMany,
        Frequency.average => S.current.medium,
        Frequency.little => S.current.aLittle,
        _ => S.current.notMuch
      };

  String get toSubText => switch (this) {
        Frequency.much => S.current.notMuchOrMore,
        Frequency.veryMuch => S.current.six2SevenMuchOrMore,
        Frequency.average => S.current.three2FiveDaysInWeek,
        Frequency.little => S.current.twoToThereDaysInWeek,
        _ => S.current.worksEveryDayOfTheWeek
      };
}
