import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/object/entity/daily_workout/daily_workout.dart';
import 'package:fit_life/mvvm/object/entity/workout_plan/workout_plan.dart';
import 'package:fit_life/mvvm/object/entity/session/session.dart';
import 'package:fit_life/mvvm/ui/all_exercise/view_model/all_exercise_view_model.dart';
import 'package:fit_life/mvvm/ui/auth/views/introduction_view.dart';
import 'package:fit_life/mvvm/ui/auth/views/sign_up_view.dart';
import 'package:fit_life/mvvm/ui/calendar/views/calendar_view.dart';
import 'package:fit_life/mvvm/ui/category/views/category_view.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/main_chat_view.dart';
import 'package:fit_life/mvvm/ui/conversation/view/conversation_view.dart';
import 'package:fit_life/mvvm/ui/execise_detail/view_model/exercise_detail_view_model.dart';
import 'package:fit_life/mvvm/ui/execise_detail/views/exercise_detail_view.dart';
import 'package:fit_life/mvvm/ui/exercise_schedule/views/exercise_overview_view.dart';
import 'package:fit_life/mvvm/ui/favorite_exercise/view/favorite_exercise_view.dart';
import 'package:fit_life/mvvm/ui/favorite_news/views/favorite_news_view.dart';
import 'package:fit_life/mvvm/ui/health_overview/views/health_overview_view.dart';
import 'package:fit_life/mvvm/ui/list_news/views/list_news_view.dart';
import 'package:fit_life/mvvm/ui/news_detail/views/news_detail_view.dart';
import 'package:fit_life/mvvm/ui/notification/views/notification_view.dart';
import 'package:fit_life/mvvm/ui/plan_detail/views/add_daily_workout_view.dart';
import 'package:fit_life/mvvm/ui/plan_detail/views/plan_detail_view.dart';
import 'package:fit_life/mvvm/ui/plan_overview/views/add_plan_view.dart';
import 'package:fit_life/mvvm/ui/preview_exercise/views/preview_exercise_view.dart';
import 'package:fit_life/mvvm/ui/all_exercise/views/all_exercise_view.dart';
import 'package:fit_life/mvvm/ui/recommend_plan/views/group_exercise_view.dart';
import 'package:fit_life/mvvm/ui/session_plan/view_model/session_plan_view_model.dart';
import 'package:fit_life/mvvm/ui/session_plan/views/add_session_plan.dart';
import 'package:fit_life/mvvm/ui/session_plan/views/session_plan_view.dart';
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

class MainRoutes {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const ProviderScope(child: OnboardingScreen());
          },
        );
      case Routes.addDailyWorkout:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const ProviderScope(child: AddDailyWorkoutView());
          },
        );
      case Routes.addPlan:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return const ProviderScope(child: AddPlanView());
          },
        );
      case Routes.passCode:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return PassCodeScreen(routes: settings.arguments.toString());
          },
        );
      case Routes.signUp:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: SignUpView()),
        );
      case Routes.chatBot:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: ChatBotView(chatId: "0")),
        );
      case Routes.conversation:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: ConversationView()),
        );
      case Routes.wooTrackView:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            if (settings.arguments is Session) {
              return ProviderScope(
                child: WooTrackView(session: settings.arguments as Session),
              );
            }
            return const SizedBox();
          }, 
        );
      case Routes.previewExercise:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            if (settings.arguments is Session) {
              return ProviderScope(
                child:
                    PreviewExerciseView(session: settings.arguments as Session),
              );
            }
            return const SizedBox();
          },
        );

      case Routes.addSessionPlan:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            if (settings.arguments is int) {
              return ProviderScope(
                child: AddSessionPlan(id: settings.arguments as int),
              );
            }
            return const SizedBox();
          },
        );

      case Routes.splash:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: SplashView()),
        );
      case Routes.groupExercise:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: GroupExerciseView()),
        );
      case Routes.favoriteExercise:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const FavoriteExerciseView());
      case Routes.sessionPlan:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => ProviderScope(
            overrides: [
              sessionPlanStateNotifier = AutoDisposeStateNotifierProvider(
                (ref) => injector.get<SessionPlanViewModel>(
                  param1: settings.arguments as DailyWorkout?,
                ),
              )
            ],
            child: const SessionPlanView(),
          ),
        );

      case Routes.exerciseDetail:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) {
              if (settings.arguments is int) {
                return ProviderScope(
                  overrides: [
                    exerciseDetailStateNotifier =
                        AutoDisposeStateNotifierProvider(
                      (ref) => injector.get<ExerciseDetailViewModel>(
                        param1: settings.arguments,
                      ),
                    )
                  ],
                  child: const ExerciseDetailView(),
                );
              }
              return const SizedBox();
            });
      case Routes.newsDetail:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) {
              if (settings.arguments is int) {
                return ProviderScope(
                  child: NewsDetailView(newsI: settings.arguments as int),
                );
              }
              return const SizedBox();
            });
      case Routes.healthOverview:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: HealthOverviewView()),
        );
      case Routes.categories:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: CategoryView()),
        );
      case Routes.calendar:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => ProviderScope(
              child: CalendarView(
            dailyWorkouts: settings.arguments as List<DailyWorkout>?,
          )),
        );
      case Routes.notification:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: NotificationView()),
        );

      case Routes.signIn:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: SignInView()),
        );
      case Routes.allExercise:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            if (settings.arguments is String) {
              return ProviderScope(
                overrides: [
                  allExerciseStateNotifier = AutoDisposeStateNotifierProvider(
                    (ref) => injector.get<AllExerciseViewModel>(
                        param1: settings.arguments),
                  )
                ],
                child: const AllExerCiseView(),
              );
            }
            return const SizedBox();
          },
        );
      case Routes.introduction:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const IntroductionView(),
        );
      case Routes.mainChat:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: MainChatView()),
        );
      case Routes.favoriteNews:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const FavoriteNewsView(),
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
          builder: (_) => ProviderScope(
              child: PlanDetailView(
            plan: settings.arguments as WorkoutPlan,
          )),
        );
      case Routes.listNews:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProviderScope(child: ListNewsView()),
        );
      case Routes.exerciseOverview:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            if (settings.arguments is int) {
              return ProviderScope(
                child: ExerciseOverviewView(settings.arguments as int),
              );
            }
            return const SizedBox();
          },
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

Route _createRoute(
  Widget widget, {
  Curve curvesIn = Curves.linear,
  Tween? tweenC,
  Offset begin = const Offset(1.0, 0.0),
  Offset end = Offset.zero,
}) {
  return PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 400),
    reverseTransitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (context, animation, secondaryAnimation) => widget,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final curve = curvesIn;

      var tween = tweenC?.chain(CurveTween(curve: curve)) ??
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween as Animatable<Offset>),
        child: child,
      );
    },
  );
}
