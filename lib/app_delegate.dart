import 'dart:async';
// import 'package:sentry_flutter/sentry_flutter.dart';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fit_life/core/services/fcm/fcm_service.dart';
import 'package:fit_life/firebase_options.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:injectable/injectable.dart';

import 'application.dart';
import 'mvvm/data/local/preferences.dart';
import 'core/components/configurations/configurations.dart';
import 'core/dependency_injection/di.dart';
// import 'data/datasource/local/preferences.dart';

class Mutable<T> {
  Mutable(this.value);
  T value;
}

class AppDelegate {
  Future<Widget> build(Map<String, dynamic> environment) async {
    WidgetsFlutterBinding.ensureInitialized();

    Configurations().setConfigurationValues(environment);

    configureDependencies(environment: Environment.prod);
    var isMobile = Configurations.isMobileMode;
    final savedThemeMode = await AdaptiveTheme.getThemeMode();

    return Application(
      navigationKey: GlobalKey<NavigatorState>(),
      providers: const [],
      initialRoute: Routes.splash,
      savedThemeMode: savedThemeMode,
      isMobile: isMobile,
    );
  }

  Future<void> run(Map<String, dynamic> environment) async {
    final app = await build(environment);
    await Preferences.ensureInitedPreferences();
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingHandler);
    if (!kIsWeb) {
      await injector.get<FCMService>().setupFlutterNotifications();
    }
    runApp(app);
  }
}
