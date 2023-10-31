part of 'calendar_view_model.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.initial({required CalendarData data}) = _Initial;
}
