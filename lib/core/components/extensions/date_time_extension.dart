import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toDDMMYYYY() {
    return DateFormat.yMMMd().format(this).toString();
  }
}
