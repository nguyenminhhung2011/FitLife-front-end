import 'package:fit_life/mvvm/ui/execise_detail/views/exercise_detail_view.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/views/exercise_overview_view.dart';
import 'package:fit_life/mvvm/ui/exercise_schedule/views/exercise_schedule_view.dart';
import 'package:fit_life/mvvm/ui/plan_detail/views/add_new_plan_view.dart';
import 'package:fit_life/mvvm/ui/plan_detail/views/plan_detail_view.dart';
import 'package:fit_life/mvvm/ui/previeew_exercise/views/preview_exercise_view.dart';
import 'package:fit_life/mvvm/ui/wo_trac/views/wo_trac_view.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/mvvm/ui/auth/views/sign_in_view.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/chat_bot_view.dart';
import 'package:fit_life/mvvm/ui/dashboard/views/dashboard_view.dart';
import 'package:fit_life/mvvm/ui/fit_overview/views/fit_oveview_view.dart';
import 'package:fit_life/mvvm/ui/splash/views/splash_view.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/onboarding_screen.dart';

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
      case Routes.onboarding:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const OnboardingScreen();
          },
        );
      case Routes.addNewExercise:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const AddNewExerciseView();
          },
        );
      case Routes.passCode:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return PassCodeScreen(routes: settings.arguments.toString());
          },
        );
      case Routes.chatBot:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: ChatBotView()),
        );
      case Routes.wooTrackView:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: WooTrackView()),
        );
      case Routes.previewExercise:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: PreviewExerciseView()),
        );

      case Routes.splash:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: SplashView()),
        );
      case Routes.exerciseOverview:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: ExerciseOverViewView()),
        );

      case Routes.exerciseDetail:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: ExerciseDetailView()),
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
      case Routes.planDetail:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: PlanDetailView()),
        );
      case Routes.exerciseSchedule:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: ExerciseScheduleView()),
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
