import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/enum/gender.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/loading_page.dart';
import 'package:fit_life/mvvm/ui/onboarding/view_model/onboarding_view_model.dart';
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
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:im_stepper/stepper.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  OnboardingViewModel get _vm => ref.read(onboardingStateNotifier.notifier);
  OnboardingState get _state => ref.watch(onboardingStateNotifier);

  int activeStep = 0;
  int upperBound = 6;

  TextEditingController fullNameCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  bool isMale = true;
  DateTime? birthday;
  int height = 150;
  int weight = 50;
  int duration = 0;
  int target = 50;

  @override
  void dispose() {
    fullNameCtrl.dispose();
    phoneCtrl.dispose();
    super.dispose();
  }

  void onTapNext() {
    if (activeStep < upperBound) {
      setState(() {
        activeStep++;
      });
    } else {
      _vm.updateUserProfile(
        gender: isMale ? Gender.male : Gender.female,
        frequency: Constant.durationConst[duration],
        height: height.toDouble(),
        weight: weight.toDouble(),
        birthDay: birthday?.millisecondsSinceEpoch ?? 0,
        phone: phoneCtrl.text,
      );
    }
  }

  void _listStateChange(OnboardingState state) {
    state.maybeWhen(
      updateProfileFailed: (err) =>
          context.showSnackBar("🐛[Update profile] $err"),
      updateProfileSuccess: () async {
        context.pushAndRemoveAll(Routes.dashboard);
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(onboardingStateNotifier, (_, next) => _listStateChange(next));
    final body = [
      FillYourProfileScreen(
        fullNameCtrl: fullNameCtrl,
        phoneCtrl: phoneCtrl,
      ),
      SelectGenderScreen(
        isMale: isMale,
        genderChange: (value) {
          setState(() {
            isMale = value;
          });
        },
      ),
      GetOldScreen(
        initialDateTime: birthday,
        onDateTimeChanged: (value) {
          setState(() {
            birthday = value;
          });
        },
      ),
      GetHeightScreen(
        initHeight: height,
        onChange: (value) {
          setState(() {
            height = value;
          });
        },
      ),
      GetWeightScreen(
        initWeight: weight,
        onChange: (value) {
          setState(() {
            weight = value;
          });
        },
      ),
      SelectDurationScreen(
        initDuration: duration,
        onChange: (value) {
          setState(() {
            duration = value;
          });
        },
      ),
      GetWeightTargetScreen(
        initTarget: target,
        onChange: (value) {
          setState(() {
            target = value;
          });
        },
      ),
    ];

    return Stack(
      children: [
        _bod(context, body),
        if (_state.loading)
          Container(
            color: Colors.black45,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: StyleLoadingWidget.foldingCube.renderWidget(
                  size: 40.0, color: Theme.of(context).primaryColor),
            ),
          )
      ],
    );
  }

  Scaffold _bod(BuildContext context, List<Widget> body) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            if (activeStep > 0)
              Expanded(
                child: ButtonCustom(
                  height: 45.0,
                  radius: 5.0,
                  onPress: () {
                    setState(() {
                      activeStep--;
                    });
                  },
                  child: Text(
                    S.of(context).previous,
                    style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            const SizedBox(width: 10),
            Expanded(
              child: ButtonCustom(
                height: 45.0,
                radius: 5.0,
                color: activeStep < upperBound
                    ? context.primaryColor
                    : Colors.green,
                borderColor: activeStep < upperBound
                    ? context.primaryColor
                    : Colors.green,
                onPress: onTapNext,
                child: Text(
                  activeStep < upperBound
                      ? S.of(context).next
                      : S.of(context).letStart,
                  style: context.titleMedium.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0).copyWith(top: kToolbarHeight),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 75.0,
                  child: IconStepper(
                    direction: Axis.horizontal,
                    icons: [
                      Icons.login,
                      Icons.scale,
                      Icons.cake,
                      Icons.height,
                      Icons.person,
                      Icons.timer_outlined,
                      Icons.golf_course_sharp,
                    ].mapIndexed((index, icon) {
                      final color = (index == activeStep)
                          ? Colors.white
                          : context.titleLarge.color;
                      return Icon(icon, size: 12.0, color: color);
                    }).toList(),
                    stepColor: Theme.of(context).scaffoldBackgroundColor,
                    activeStep: activeStep,
                    activeStepColor: context.primaryColor,
                    enableNextPreviousButtons: false,
                    enableStepTapping: false,
                    lineColor: Theme.of(context).primaryColor,
                    stepReachedAnimationEffect: Curves.easeInOutCubic,
                    onStepReached: (index) {
                      setState(() {
                        activeStep = index;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 30),
                body[activeStep],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
