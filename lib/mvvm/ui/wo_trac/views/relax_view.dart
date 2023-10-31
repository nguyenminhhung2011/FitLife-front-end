import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/extensions/interger_extension.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/core/components/widgets/video_player.dart';
import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_count_down.dart';

class RelaxView extends StatefulWidget {
  const RelaxView({super.key});

  @override
  State<RelaxView> createState() => _RelaxViewState();
}

class _RelaxViewState extends State<RelaxView> {
  late int _restTime = 23;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: context.heightDevice * 0.6,
        minHeight: context.heightDevice * 0.5,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15.0),
            const DividerDot(),
            const SizedBox(height: 15.0),
            _mainView(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(child: _buttonAdd()),
                  const SizedBox(width: 10.0),
                  Expanded(child: _buttonNext(context)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ButtonCustom _buttonNext(BuildContext context) {
    return ButtonCustom(
      height: 45.0,
      radius: 10.0,
      child: Text(
        "Next to exercise",
        style: context.titleMedium
            .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      onPress: () => context.popArgs(true),
    );
  }

  Expanded _mainView() {
    return Expanded(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(2.0),
            margin: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor.withOpacity(0.1),
                  blurRadius: 5.0,
                )
              ],
              color: Theme.of(context).cardColor,
            ),
            width: double.infinity,
            height: context.heightDevice * 0.25,
            child: const VideoPlayerUI(
              isShowShadow: false,
              url:
                  "https://github.com/minhunsocute/Data-GHealth/blob/main/workout_image/Dragon%20Flag%20Sit-Up.mp4?raw=true",
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          const SizedBox(),
          Text(
            "Next exercise 4/8",
            style:
                context.titleSmall.copyWith(color: Theme.of(context).hintColor),
          ),
          Text.rich(TextSpan(
            style: context.titleMedium,
            children: <TextSpan>[
              const TextSpan(
                  text: "Russian twists ",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: "00:${10.renderTimeString}")
            ],
          )),
          const SizedBox(),
          const Divider(),
          const SizedBox(),
          Text(
            "🕑 Rest",
            textAlign: TextAlign.center,
            style: context.titleLarge.copyWith(fontWeight: FontWeight.w600),
          ),
          Countdown(
            seconds: _restTime,
            interval: const Duration(milliseconds: 100),
            build: (_, time) {
              return Text(
                "00:${time.round().renderTimeString}",
                textAlign: TextAlign.center,
                style: context.titleLarge
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 30.0),
              );
            },
            onFinished: () => context.popArgs(true),
          ),
          const SizedBox(height: 5.0),
        ]
            .expandIndexed((index, element) => [
                  if (index == 0)
                    element
                  else
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: element,
                    ),
                  const SizedBox(height: 5.0)
                ])
            .toList(),
      ),
    );
  }

  ButtonCustom _buttonAdd() {
    return ButtonCustom(
      color: Theme.of(context).cardColor,
      borderColor: Theme.of(context).primaryColor,
      height: 45.0,
      radius: 10.0,
      child: Text(
        "+ 20s",
        style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
      ),
      onPress: () {
        setState(() {
          _restTime += 20;
        });
      },
    );
  }
}
