part of 'notification_view_model.dart';


@freezed 
class NotificationState with _$NotificationState {
  const factory NotificationState.initial({required NotificationData data}) = _Initial;
}