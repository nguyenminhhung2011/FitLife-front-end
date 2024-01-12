import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

const _channelId = "fit_life_channel";
const _channelName = "Fit life  Notifications";

@singleton
class NotificationService {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  /// Initialize notification
  void initializeNotification() async {
    _configureLocalTimeZone();
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings("@mipmap/ic_launcher");

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  // / Set right date and time for notifications
  tz.TZDateTime _convertTime(DateTime schedule) {
    final now = tz.TZDateTime.now(tz.local);

    tz.TZDateTime scheduleDate = tz.TZDateTime(
      tz.local,
      schedule.year,
      schedule.month,
      schedule.day,
      schedule.hour,
      schedule.minute,
      schedule.second,
    );
    return scheduleDate.isBefore(now)
        ? scheduleDate.add(const Duration(days: 1))
        : scheduleDate;
  }

  Future<void> _configureLocalTimeZone() async {
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation('Asia/Ho_Chi_Minh'));
    log("🙏 ${tz.getLocation('Asia/Ho_Chi_Minh').name}");
  }

  _androidNotificationDetail({
    required String title,
    required String description,
  }) =>
      AndroidNotificationDetails(
        '$_channelId $title',
        _channelName,
        channelDescription: description,
        importance: Importance.high,
        priority: Priority.high,
        icon: '@mipmap/ic_launcher',
      );

  /// Scheduled Notification
  Future<void> scheduledNotification({
    required DateTime schedule,
    required int id,
    required String sound,
    required String payload,
  }) async {
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      'It\'s time to drink water!',
      'After drinking, touch the cup to confirm',
      _convertTime(schedule),
      NotificationDetails(
          android: _androidNotificationDetail(
              title: "title", description: "description")),
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.wallClockTime,
      matchDateTimeComponents: DateTimeComponents.time,
      payload: payload,
      // ignore: deprecated_member_use
      androidAllowWhileIdle: true,
    );
  }

  void showFlutterNotification({
    required int id,
    required String title,
    required String body,
    required String payload,
  }) {
    if (!kIsWeb) {
      flutterLocalNotificationsPlugin.show(
        id,
        title,
        body,
        NotificationDetails(
          android: _androidNotificationDetail(
              title: title, description: "description"),
        ),
        payload: payload,
      );
    }
  }

  cancelAll() async => await flutterLocalNotificationsPlugin.cancelAll();
  cancel(id) async => await flutterLocalNotificationsPlugin.cancel(id);
}
