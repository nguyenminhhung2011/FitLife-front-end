import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/auth/views/sign_in_view.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/dashboard/views/dashboard_view.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/fit_overview/views/fit_oveview_view.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/splash/views/splash_view.dart';
import 'package:flutter_base_clean_architecture/routes/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/components/layout/setting_layout/views/passcode_screen.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:go_router/go_router.dart';

class MainRoutes {
  static Map<String, WidgetBuilder> getRoutesWithSettings() {
    final routes = {Routes.auth: (context) => const SizedBox()};
    return routes;
  }

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.auth:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const SizedBox();
          },
        );
      case Routes.passCode:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return PassCodeScreen(routes: settings.arguments.toString());
          },
        );

      case Routes.splash:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: SplashView()),
        );

      case Routes.signIn:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: SignInView()),
        );

      case Routes.dashboard:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: DashboardView()),
        );
      case Routes.fitOverView:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: FitOverViewView()),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route unDefinedRoute([String message = 'Page not founds']) {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: Center(
            child: Text(message),
          ),
        );
      },
    );
  }
}

// final _rootNavigatorKey = GlobalKey<NavigatorState>();

// // @Riverpod(keepAlive: true)
// // GoRouter goRouter(RouteSettings ref) {
// //   return GoRouter(
// //     initialLocation: '/',
// //     navigatorKey: _rootNavigatorKey,
// //     debugLogDiagnostics: false,
// //     routes: [
// //       GoRoute(
// //         path: Routes.splash,
// //         name: 'Splash',
// //         builder: (context, state) => const SplashView(),
// //       ),
// //     ],
// //   );
// // }

// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';

// part 'main_route.gr.dart';

// @AutoRouterConfig(replaceInRouteName: 'Screen,Route')
// class AppRouter extends _$AppRouter {
// // @override
// // replaceInRouteName

//   @override
//   RouteType get defaultRouteType =>
//       const RouteType.material(); //.cupertino, .adaptive ..etc

//   @override
//   List<AutoRoute> get routes => [
//         /// routes go here
//       ];
// }
