import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/app_coordinator.dart';
import 'package:flutter_base_clean_architecture/core/components/configurations/env/env_prod.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/image_const.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/splash/view_model/splash_view_model.dart';
import 'package:flutter_base_clean_architecture/routes/routes.dart';
// import 'package:flutter_base_clean_architecture/routes/main_routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SplashView extends ConsumerStatefulWidget {
  static const String routeName = '/splash';
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  // final AppRouter appRouter = AppRouter();

  SplashViewModel get _vm => ref.read(splashStateNotifier.notifier);

  @override
  void initState() {
    super.initState();
    Future(() {
      _vm.isAuthCall();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<SplashState>(splashStateNotifier, (previous, next) {
      next.maybeWhen(
        orElse: () {},
        isAuth: (_) {
          log("🌟🌟 Is auth");
        },
        isNotAuth: (_) {
          log("🐛🐛  Is not auth");
          context.pushAndRemoveAll(Routes.signIn);
        },
      );
    });
    // return loading.maybeWhen(orElse: () => nul);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(ImageConst.splashGif),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Text.rich(
                TextSpan(
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: '${environmentProd['name']} ',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: 'App',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Everybody Can Train',
                style: context.titleSmall.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).hintColor,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
