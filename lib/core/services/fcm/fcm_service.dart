import 'dart:async';
// import 'dart:convert';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

// import 'package:http/http.dart' as http;

const _channelId = "fit_life_channel";
const _channelName = "Fit life  Notifications";

@pragma('vm:entry-point')
Future<void> firebaseMessagingHandler(RemoteMessage remoteMessage) async {
  await Firebase.initializeApp();
  await injector.get<FCMService>().setupFlutterNotifications();
}

@singleton
class FCMService {
  static FCMService? _instance;

  late AndroidNotificationChannel channel;
  late FirebaseMessaging _firebaseMessaging;

  /// Initialize the [🎉FlutterLocalNotificationsPlugin] package.

  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  factory FCMService() {
    return _instance ??= FCMService._();
  }

  FCMService._();

  Future<void> setupFlutterNotifications() async {
    if (_instance == null) {
      return;
    }
    channel = const AndroidNotificationChannel(
      _channelId,
      _channelName,
      importance: Importance.high,
      playSound: true,
    );

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    // flutterLocalNotificationsPlugin.in
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    await Firebase.initializeApp();
    _firebaseMessaging = FirebaseMessaging.instance;
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    final token = await _firebaseMessaging.getToken();
    log("🔑[Token] $token");
  }

  Future<void> onBackgroundMessage(RemoteMessage remoteMessage) async {
    await Firebase.initializeApp();
  }

  void showFlutterNotification(RemoteMessage remoteMessage) {
    RemoteNotification? notification = remoteMessage.notification;
    AndroidNotification? androidNotification =
        remoteMessage.notification?.android;
    if (notification != null && androidNotification != null && !kIsWeb) {
      flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
            icon: '@mipmap/ic_launcher',
          ),
        ),
        payload: "exercise",
      );
    }
  }

  // void sendNotificationToFCM() async {
  //   await _firebaseMessaging.requestPermission(
  //     alert: true,
  //     badge: true,
  //     sound: true,
  //   );

  //   // Replace with your FCM server key
  //   final token = await _firebaseMessaging.getToken();
  //   log("🔑[Token] $token");

  //   final response = await http.post(
  //     Uri.parse('https://fcm.googleapis.com/fcm/send'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json',
  //       'Authorization':
  //           'key=AAAAla8CjD8:APA91bGTRAXpynuUpGOnYcpEe4ZFAC0zfyQa17MOjag6oI9CIST4PxVhRM5q5OnVA_0LcMCuFRB3oifa0Y5CmFVBEE9zFxaxb8X-gn2cP8ZO_-TA0KKjfBEOL525ZVDQ6XyYx-vu2xXE',
  //     },
  //     body: jsonEncode(<String, dynamic>{
  //       'notification': {
  //         'title': 'New Notification',
  //         'body': 'This is a new notification from Firebase Cloud Messaging.',
  //         "isScheduled": "true",
  //         "scheduledTime": "2023-12-31 18:26:00"
  //       },
  //       'priority': 'high',
  //       'to': token, // Replace with your FCM topic or device token
  //     }),
  //   );

  //   if (response.statusCode == 200) {
  //     print('Notification sent successfully.');
  //   } else {
  //     print('Failed to send notification. Error: ${response.body}');
  //   }
  // }

  void onDidReceiveNotificationResponse(
      NotificationResponse notificationResponse) async {
    log("🔔[Notification] ${notificationResponse.payload}");
  }

  void initFCM({Function()? navigateFunction}) {
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
    // final firebaseMessaging = FCM();
    // firebaseMessaging.setNotification();
    Firebase.initializeApp();

    FirebaseMessaging.onMessage.listen((remoteMessage) {
      showFlutterNotification(remoteMessage);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((event) {});
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );
    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    );
  }
}
