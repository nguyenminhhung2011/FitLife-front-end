import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/enum/exercise_set.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/extensions/interger_extension.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/core/components/widgets/video_player.dart';
import 'package:fit_life/mvvm/ui/wo_trac/view_model/wo_trac_view_model.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class WooTrackView extends ConsumerStatefulWidget {
  const WooTrackView({super.key});

  @override
  ConsumerState<WooTrackView> createState() => _WooTrackViewState();
}

class _WooTrackViewState extends ConsumerState<WooTrackView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  WooTrackViewModel get _vm => ref.read(wooTrackStateNotifier.notifier);

  final CountdownController _countdownController =
      CountdownController(autoStart: true);

  int get _currentExIndex =>
      ref.watch(wooTrackStateNotifier).data.currentExIndex;

  bool get _isPlayed => ref.watch(wooTrackStateNotifier).data.isPlayed;

  final _timeConstant = [10, 5, 5, 5, 5];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onProcessFinish() {
    _vm.changeCurrentEx();
  }

  void _listenStateChange(WooTrackState state) {
    state.maybeWhen(
      changeExerciseSuccess: (_) {
        /// Handle event next exercise here
        _countdownController.restart();
      },
      playPauseSuccess: (data) {
        if (data.isPlayed) {
          _countdownController.resume();
        } else {
          _countdownController.pause();
        }
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(wooTrackStateNotifier, (_, next) => _listenStateChange(next));

    return Scaffold(
      backgroundColor: _backgroundColor,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.close, color: context.titleLarge.color),
        ),
        actions: [
          IconButton(
            onPressed: () =>
                context.openListPageWithRoute(Routes.exerciseDetail),
            icon: Icon(Icons.more_horiz, color: context.titleLarge.color),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(2.0),
            margin: const EdgeInsets.symmetric(horizontal: 10.0)
                .copyWith(top: kToolbarHeight),
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
              url:
                  "https://github.com/minhunsocute/Data-GHealth/blob/main/workout_image/Dragon%20Flag%20Sit-Up.mp4?raw=true",
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          const SizedBox(height: 5.0),
          const DividerDot(),
          const SizedBox(height: 5.0),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: _overViewField()),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor.withOpacity(0.05),
                  blurRadius: 5.0,
                  offset: const Offset(0, -5),
                ),
              ],
              color: _backgroundColor,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: _countDowField(context),
                ),
                const SizedBox(height: 10.0),
                _processField(context),
                const SizedBox(height: 10.0),
                _controllerField(context),
                const SizedBox(height: 20.0),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _processField(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      width: double.infinity,
      height: 40.0,
      child: Row(
        children: [
          for (int i = 0; i < 5; i++)
            Expanded(
              child: LayoutBuilder(builder: (context, constraints) {
                return Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 5.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      width: (i < _currentExIndex) ? constraints.maxWidth : 0,
                      height: 5.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                );
              }),
            )
        ].expand((e) => [e, const SizedBox(width: 10.0)]).toList()
          ..removeLast(),
      ),
    );
  }

  Widget _overViewField() => ListView(
        padding: const EdgeInsets.all(0.0),
        children: [
          Text(
            'Day 1',
            style: context.titleSmall.copyWith(
              color: Theme.of(context).hintColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Workout 1: Chest out',
            style: context.titleMedium.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(),
          Text(
            "Barbell Bench Press",
            style: context.titleLarge
                .copyWith(fontWeight: FontWeight.bold, fontSize: 26.0),
          ),
          const SizedBox(),
          const Divider(),
          const SizedBox(),
          Text(
            "Settings exercise",
            style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Set 1',
                style: context.titleMedium.copyWith(
                  color: Theme.of(context).hintColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Remove',
                  style: context.titleSmall.copyWith(color: Colors.red),
                ),
              )
            ],
          ),
          Row(
            children: [
              ...[ExerciseSet.weight, ExerciseSet.reps].map(
                (e) => Expanded(child: ExerciseSetItem(e: e, data: 10)),
              ),
            ].expand((e) => [e, const SizedBox(width: 10.0)]).toList()
              ..removeLast(),
          ),
        ].expand((e) => [e, const SizedBox(height: 5.0)]).toList(),
      );

  Column _countDowField(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Countdown(
              controller: _countdownController,
              seconds: (_currentExIndex < _timeConstant.length)
                  ? _timeConstant[_currentExIndex]
                  : 0,
              build: (context, time) {
                return Text(
                  '00 : ${(time.round()).renderTimeString}',
                  style: context.titleLarge.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              },
              interval: const Duration(milliseconds: 100),
              onFinished: _onProcessFinish,
            ),
            Text(
              '60%',
              style: context.titleLarge.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...['🔥 24 KCal Burned', 'Completed 3 of 5'].map((e) => Text(
                  e,
                  style: context.titleSmall
                      .copyWith(overflow: TextOverflow.ellipsis),
                ))
          ],
        ),
      ],
    );
  }

  Widget _controllerField(BuildContext context) {
    final centerIcon = (_isPlayed) ? Icons.pause : Icons.play_arrow;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _controllerBtn(icon: Icons.arrow_back, onPress: () {}),
          _controllerBtn(
            icon: centerIcon,
            onPress: () => _vm.changePlayStatus(),
            radius: 30.0,
            iconColor: Colors.white,
            color: Theme.of(context).primaryColor,
          ),
          _controllerBtn(icon: Icons.arrow_forward, onPress: () {})
        ],
      ),
    );
  }

  Widget _controllerBtn({
    Color? color,
    Color? iconColor,
    double? radius,
    required IconData icon,
    required Function() onPress,
  }) =>
      InkWell(
        onTap: onPress,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color ?? Theme.of(context).dividerColor.withOpacity(0.1),
          ),
          child: Icon(icon,
              color: iconColor ?? Colors.black, size: radius ?? 20.0),
        ),
      );
}

class ExerciseSetItem extends StatefulWidget {
  final ExerciseSet e;
  final int data;
  const ExerciseSetItem({super.key, required this.e, required this.data});

  @override
  State<ExerciseSetItem> createState() => _ExerciseSetItemState();
}

class _ExerciseSetItemState extends State<ExerciseSetItem> {
  int _data = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _data = widget.data;
    });
  }

  void _remove() {
    if (_data > 0) {
      setState(() {
        _data -= 1;
      });
    }
  }

  void _add() {
    setState(() {
      _data += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.e.stringGenerate,
          style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 7.0),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(width: 1, color: Theme.of(context).hintColor),
          ),
          child: Row(children: [
            IconButton(
              onPressed: _remove,
              icon: const Icon(Icons.remove),
            ),
            Expanded(
              child: Text(
                '$_data ${widget.e.pre}',
                textAlign: TextAlign.center,
                style:
                    context.titleMedium.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            IconButton(
              onPressed: _add,
              icon: const Icon(Icons.add),
            )
          ]),
        )
      ],
    );
  }
}



  