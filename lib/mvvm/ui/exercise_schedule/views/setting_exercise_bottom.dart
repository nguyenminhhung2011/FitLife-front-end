import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/dropdown_list_row.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/core/components/widgets/toggle_row.dart';
import 'package:fit_life/mvvm/me/entity/session/setting_session.dart';
import 'package:fit_life/mvvm/ui/plan_detail/ob/add_actions.dart';
import 'package:flutter/material.dart';

class SettingExerciseBottom extends StatefulWidget {
  final SettingSession settingSession;
  const SettingExerciseBottom({super.key, required this.settingSession});

  @override
  State<SettingExerciseBottom> createState() => _SettingExerciseBottomState();
}

class _SettingExerciseBottomState extends State<SettingExerciseBottom> {
  late String calcTarget;
  late String timePerLession;
  late String numOfRound;
  late String breakTime;
  late String transferTime;
  late String level;

  bool startWithBoot = false;
  bool randomMix = false;

  @override
  void initState() {
    final settingSession = widget.settingSession;
    calcTarget = settingSession.calcTarget.toString();
    timePerLession = settingSession.timePerLesson.toString();
    numOfRound = settingSession.numberRound.toString();
    breakTime = settingSession.breakTime.toString();
    transferTime = settingSession.transferTime.toString();
    level = settingSession.level;
    startWithBoot = settingSession.startWithBoot;
    randomMix = settingSession.randomMix;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.widthDevice,
      constraints: BoxConstraints(
        minHeight: context.heightDevice * 0.6,
        maxHeight: context.heightDevice * 0.8,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomSheet: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ButtonCustom(
            onPress: () => context.popArgs(
              SettingSession(
                level: level,
                calcTarget: int.parse(calcTarget),
                timePerLesson: int.parse(timePerLession),
                numberRound: int.parse(numOfRound),
                breakTime: int.parse(breakTime),
                transferTime: int.parse(transferTime),
                startWithBoot: startWithBoot,
                randomMix: randomMix,
              ),
            ),
            radius: 5.0,
            height: 45.0,
            child: Text(
              "Update",
              style: context.titleMedium
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15.0),
            const DividerDot(),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Exercise setting",
                style:
                    context.titleMedium.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 15.0),
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 10),
                  ToggleRowWidget(
                    title: "Start with boot",
                    value: startWithBoot,
                    icon: const Icon(Icons.star_border_outlined),
                    onChange: (newValue) {
                      setState(() {
                        startWithBoot = newValue!;
                      });
                    },
                  ),
                  const SizedBox(height: 10),
                  ToggleRowWidget(
                    title: "Random mix",
                    value: randomMix,
                    icon: const Icon(Icons.sports_golf_rounded),
                    onChange: (newValue) {
                      setState(() {
                        randomMix = newValue!;
                      });
                    },
                  ),
                  const SizedBox(height: 10.0),
                  ...AddActions.values
                      .map(
                        (e) => DropdownListRowWidget(
                            listItem: e.data,
                            title: e.title,
                            itemChoice: e == AddActions.calcTarget
                                ? calcTarget
                                : e == AddActions.timePerLession
                                    ? timePerLession
                                    : e == AddActions.numOfRound
                                        ? numOfRound
                                        : e == AddActions.transferTime
                                            ? transferTime
                                            : e == AddActions.breakTime
                                                ? breakTime
                                                : level,
                            icon: Icon(e.icon),
                            onChange: (newValue) {
                              setState(() {
                                if (e == AddActions.calcTarget) {
                                  calcTarget = newValue!;
                                } else if (e == AddActions.timePerLession) {
                                  timePerLession = newValue!;
                                } else if (e == AddActions.numOfRound) {
                                  numOfRound = newValue!;
                                } else if (e == AddActions.transferTime) {
                                  transferTime = newValue!;
                                } else if (e == AddActions.breakTime) {
                                  breakTime = newValue!;
                                } else if (e == AddActions.level) {
                                  level = newValue!;
                                }
                              });
                            }),
                      )
                      .expand((e) => [e, const SizedBox(height: 10.0)]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
