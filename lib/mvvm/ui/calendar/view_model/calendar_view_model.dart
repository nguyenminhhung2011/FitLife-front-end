import 'package:fit_life/mvvm/ui/calendar/view_model/calendar_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'calendar_state.dart';

part 'calendar_view_model.freezed.dart';

final calendarStateNotifier =
    AutoDisposeStateNotifierProvider<CalendarViewModel, CalendarState>(
        (ref) => CalendarViewModel());

@injectable
class CalendarViewModel extends StateNotifier<CalendarState> {
  CalendarViewModel() : super(const _Initial(data: CalendarData()));
}
