// import 'dart:developer';

// import 'package:dash_bubble/dash_bubble.dart';
// import 'package:flutter/material.dart';

// class BubbleService {
//   static Future<void> requestOverlayPermission(BuildContext context) async {
//     await runMethod(context, () async {
//       await DashBubble.instance.requestOverlayPermission();
//     });
//   }

//   static Future<void> hasOverlayPermission(BuildContext context) async {
//     await runMethod(
//       context,
//       () async {
//         await DashBubble.instance.hasOverlayPermission();
//       },
//     );
//   }

//   static Future<void> requestPostNotificationsPermission(
//     BuildContext context,
//   ) async {
//     await runMethod(
//       context,
//       () async {
//         await DashBubble.instance.requestPostNotificationsPermission();
//       },
//     );
//   }

//   static Future<void> hasPostNotificationsPermission(
//       BuildContext context) async {
//     await runMethod(
//       context,
//       () async {
//         await DashBubble.instance.hasPostNotificationsPermission();
//       },
//     );
//   }

//   static Future<void> isRunning(BuildContext context) async {
//     await runMethod(
//       context,
//       () async {
//         await DashBubble.instance.isRunning();
//       },
//     );
//   }

//   static Future<void> runMethod(
//     BuildContext context,
//     Future<void> Function() method,
//   ) async {
//     try {
//       await method();
//     } catch (error) {
//       log(
//         name: 'Dash Bubble Playground',
//         error.toString(),
//       );
//     }
//   }

//   static Future<void> startBubble(
//     BuildContext context, {
//     BubbleOptions? bubbleOptions,
//     NotificationOptions? notificationOptions,
//     VoidCallback? onTap,
//     Function(double x, double y)? onTapDown,
//     Function(double x, double y)? onTapUp,
//     Function(double x, double y)? onMove,
//   }) async {
//     print(1);
//     await runMethod(
//       context,
//       () async {
//         await DashBubble.instance.startBubble(
//           bubbleOptions: bubbleOptions,
//           notificationOptions: notificationOptions,
//           onTap: onTap,
//           onTapDown: onTapDown,
//           onTapUp: onTapUp,
//           onMove: onMove,
//         );
//       },
//     );
//   }

//   static Future<void> stopBubble(BuildContext context) async {
//     await runMethod(
//       context,
//       () async {
//         await DashBubble.instance.stopBubble();
//       },
//     );
//   }
// }
