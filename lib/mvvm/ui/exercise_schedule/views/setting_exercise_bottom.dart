import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/action.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/views/widgets/render_setting_item.dart';
import 'package:flutter/material.dart';

class SettingExerciseBottom extends StatefulWidget {
  const SettingExerciseBottom({super.key});

  @override
  State<SettingExerciseBottom> createState() => _SettingExerciseBottomState();
}

class _SettingExerciseBottomState extends State<SettingExerciseBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.widthDevice,
      constraints: BoxConstraints(
        maxHeight: context.heightDevice * 0.8,
        minHeight: context.heightDevice * 0.6,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomSheet: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ButtonCustom(
            onPress: () {},
            radius: 5.0,
            height: 45.0,
            child: Text(
              "Update",
              style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
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
                  ...[
                    SettingExerciseActions.numberRound,
                    SettingExerciseActions.numberOfExerciseRound,
                    SettingExerciseActions.startWithBoot,
                    SettingExerciseActions.randomMix,
                    SettingExerciseActions.timForEach,
                    SettingExerciseActions.transferTime,
                    SettingExerciseActions.breakTime,
                    SettingExerciseActions.leave,
                  ].map((e) => RenderSettingItem(action: e, data: 12)).expand(
                        (e) => [e, const SizedBox(height: 5.0)],
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
