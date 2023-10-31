import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_data.freezed.dart';

@freezed
class CalendarData with _$CalendarData {
  const factory CalendarData() = _CalendarData;
}
