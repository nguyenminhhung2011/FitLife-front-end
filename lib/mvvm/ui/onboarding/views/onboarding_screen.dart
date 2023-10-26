import 'package:flutter/material.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/fill_your_profile_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/get_height_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/get_old_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/get_weight_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/get_weight_target_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/select_duration_screen.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/step/select_gender_screen.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:im_stepper/stepper.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int activeStep = 0;

  int upperBound = 6;

  @override
  Widget build(BuildContext context) {
    final body = [
      const FillYourProfileScreen(),
      const SelectGenderScreen(),
      const GetOldStep(),
      const GetHeightStep(),
      const GetWeightScreen(),
      const SelectDurationScreen(),
      const GetWeightTargetScreen(),
    ];
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      IconStepper(
                        direction: Axis.horizontal,
                        icons: const [
                          Icon(Icons.login),
                          Icon(Icons.person),
                          Icon(Icons.cake),
                          Icon(Icons.height),
                          Icon(Icons.scale),
                          Icon(Icons.timer_outlined),
                          Icon(Icons.golf_course_sharp),
                        ],
                        stepColor: Theme.of(context).scaffoldBackgroundColor,
                        activeStep: activeStep,
                        activeStepColor: context.primaryColor,
                        enableNextPreviousButtons: false,
                        lineColor: Theme.of(context).primaryColor,
                        stepReachedAnimationEffect: Curves.easeInOutCubic,
                        onStepReached: (index) {
                          setState(() {
                            activeStep = index;
                          });
                        },
                      ),
                      const SizedBox(height: 30),
                      body[activeStep],
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                        onPressed: () {
                          if (activeStep < upperBound) {
                            setState(() {
                              activeStep++;
                            });
                          } else {
                            Navigator.of(context).pushNamed(Routes.dashboard);
                          }
                        },
                        child: Text(S.of(context).next),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
