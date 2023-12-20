import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toDDMMYYYY() {
    return DateFormat.yMMMd().format(this).toString();
  }

  bool isSameDateWith(int time) {
    return toDDMMYYYY() ==
        DateTime.fromMillisecondsSinceEpoch(time).toDDMMYYYY();
  }

  bool isSameDate(DateTime time) {
    return toDDMMYYYY() == time.toDDMMYYYY();
  }
}
