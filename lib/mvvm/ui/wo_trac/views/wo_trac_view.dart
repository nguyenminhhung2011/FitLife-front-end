import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/enum/exercise_set.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/extensions/interger_extension.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/core/components/widgets/video_player.dart';
import 'package:fit_life/mvvm/me/entity/custom_exercise/custom_exercise.dart';
import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:fit_life/mvvm/ui/wo_trac/view_model/wo_trac_view_model.dart';
import 'package:fit_life/mvvm/ui/wo_trac/views/congratulation.dart';
import 'package:fit_life/mvvm/ui/wo_trac/views/widgets/exercise_set_item.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class WooTrackView extends ConsumerStatefulWidget {
  final Session session;
  const WooTrackView({required this.session, super.key});

  @override
  ConsumerState<WooTrackView> createState() => _WooTrackViewState();
}

class _WooTrackViewState extends ConsumerState<WooTrackView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  WooTrackViewModel get _vm => ref.read(wooTrackStateNotifier.notifier);

  final CountdownController _countdownController =
      CountdownController(autoStart: true);

  late final List<CustomExercise> _exercises =
      widget.session.customExercise ?? <CustomExercise>[];

  int get _currentExIndex =>
      ref.watch(wooTrackStateNotifier).data.currentExIndex;

  bool get _isPlayed => ref.watch(wooTrackStateNotifier).data.isPlayed;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onProcessFinish() {
    _vm.changeCurrentEx(
        length: _exercises.length,
        numberRound: widget.session.numberRound ?? 1);
  }

  void _handleExChange() async {
    await Future.delayed(const Duration(milliseconds: 400));
    // ignore: use_build_context_synchronously
    final chest = await context.bottomRelax(
      widget.session.breakTime ?? 23,
      current: _currentExIndex + 1,
      total: _exercises.length,
    );
    if (chest) {
      _countdownController.restart();
    }
  }

  void _listenStateChange(WooTrackState state) {
    state.maybeWhen(
      changeExerciseSuccess: (_) {
        _handleExChange();
      },
      nextPreviousSuccess: (_) {
        _countdownController.pause();
        _handleExChange();
      },
      playPauseSuccess: (data) {
        if (data.isPlayed) {
          _countdownController.resume();
        } else {
          _countdownController.pause();
        }
      },
      completeRound: (_) async {
        await _vm.completeSession(sessionId: widget.session.id );
      },
      completeSessionFailed: (_, error) =>
          context.showSnackBar("🐛[Complete session] $error"),
      completeSessionSuccess: (_) async {
        await showDialog(
          context: context,
          builder: (_) => const Dialog(
            backgroundColor: Colors.transparent,
            child: Congratulation(),
          ),
        );
        // ignore: use_build_context_synchronously
        context.pop();
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
              autoPlay: true,
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

  Widget _processField(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      width: double.infinity,
      height: 40.0,
      child: Row(
        children: [
          for (int i = 0; i < _exercises.length; i++)
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
            "Round ${_vm.data.currentRound + 1} / ${widget.session.numberRound}",
            style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            'Day 1',
            style: context.titleSmall.copyWith(
              color: Theme.of(context).hintColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Session ${widget.session.name}  ',
            style: context.titleMedium.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(),
          Text(
            "Workout ${_currentExIndex + 1}: ${_exercises[_currentExIndex].exercise.name}",
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
                (e) => Expanded(
                  child: ExerciseSetItem(
                      e: e,
                      data: (e == ExerciseSet.weight)
                          ? _exercises[_currentExIndex].weight
                          : _exercises[_currentExIndex].rep),
                ),
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
              seconds: (_currentExIndex < _exercises.length)
                  ? _exercises[_currentExIndex].time
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
              '${((_currentExIndex / _exercises.length) * 100).round()}%',
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
            ...[
              '🔥 ${widget.session.calcTarget} KCal Burned',
              'Completed $_currentExIndex of ${_exercises.length}'
            ].map((e) => Text(
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
          _controllerBtn(
            icon: Icons.arrow_back,
            onPress: () => _vm.nextPreviousEx(
              wooExerciseAction: WooExerciseAction.previous,
              length: _exercises.length,
              numberRound: widget.session.numberRound ?? 1,
            ),
          ),
          _controllerBtn(
            icon: centerIcon,
            onPress: () => _vm.changePlayStatus(),
            radius: 30.0,
            iconColor: Colors.white,
            color: Theme.of(context).primaryColor,
          ),
          _controllerBtn(
            icon: Icons.arrow_forward,
            onPress: () => _vm.nextPreviousEx(
              wooExerciseAction: WooExerciseAction.next,
              length: _exercises.length,
              numberRound: widget.session.numberRound ?? 1,
            ),
          )
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
