import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/mvvm/me/entity/session/setting_session.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/action.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/views/widgets/render_setting_item.dart';
import 'package:flutter/material.dart';

class SettingExerciseBottom extends StatefulWidget {
  final SettingSession settingSession;
  const SettingExerciseBottom({super.key, required this.settingSession});

  @override
  State<SettingExerciseBottom> createState() => _SettingExerciseBottomState();
}

class _SettingExerciseBottomState extends State<SettingExerciseBottom> {
  late SettingSession _settingSession;
  @override
  void initState() {
    _settingSession = widget.settingSession;
    super.initState();
  }

  void _renderAction(SettingExerciseActions action, dynamic data) {
    ///[😶 Dumb code]
    if (action.isSwitch) {
      _settingSession = _settingSession.copyWith(
        startWithBoot: (action == SettingExerciseActions.startWithBoot)
            ? (data as bool)
            : _settingSession.startWithBoot,
        randomMix: (action == SettingExerciseActions.randomMix)
            ? (data as bool)
            : _settingSession.randomMix,
      );
    } else {
      _settingSession = _settingSession.copyWith(
        calcTarget: (action == SettingExerciseActions.calories)
            ? (data.round())
            : _settingSession.calcTarget,
        timePerLesson: (action == SettingExerciseActions.timForEach)
            ? (data.round())
            : _settingSession.timePerLesson,
        numberRound: (action == SettingExerciseActions.numberRound)
            ? (data.round())
            : _settingSession.numberRound,
        breakTime: (action == SettingExerciseActions.breakTime)
            ? (data.round())
            : _settingSession.breakTime,
        transferTime: (action == SettingExerciseActions.transferTime)
            ? (data.round())
            : _settingSession.transferTime,
      );
    }
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
            onPress: () => context.popArgs(_settingSession),
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
                  ..._settingSession.createMap.map((e) {
                    final data = e["data"];
                    return RenderSettingItem(
                      action: e["action"] ?? SettingExerciseActions.breakTime,
                      isEnable: (data is bool) ? data : false,
                      data: (data is int) ? data : null,
                      onChangeValue: (changeData) =>
                          _renderAction(e["action"], changeData),
                    );
                  }).expand((e) => [e, const SizedBox(height: 5.0)])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
