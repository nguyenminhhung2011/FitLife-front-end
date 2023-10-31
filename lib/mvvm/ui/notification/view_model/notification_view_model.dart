import 'package:fit_life/mvvm/ui/notification/view_model/notification_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_state.dart';

part 'notification_view_model.freezed.dart';

@injectable
class NotificationViewModel extends StateNotifier<NotificationState> {
  NotificationViewModel(super.state);
}
