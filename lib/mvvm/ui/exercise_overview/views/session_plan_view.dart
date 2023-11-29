import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/appbar.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/action.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/level.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/views/widgets/render_setting_item.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/views/widgets/todey_exercise_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readmore/readmore.dart';

class SessionPlanView extends ConsumerStatefulWidget {
  const SessionPlanView({super.key});

  @override
  ConsumerState<SessionPlanView> createState() => _SessionPlanViewState();
}

class _SessionPlanViewState extends ConsumerState<SessionPlanView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  Color get _primaryColor => Theme.of(context).primaryColor;

  EdgeInsets get _padding => const EdgeInsets.symmetric(horizontal: 15.0);

  TextStyle get _smallStyle => context.titleSmall
      .copyWith(fontSize: 12.0, color: Theme.of(context).hintColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: <Widget>[
          AppBarCustom(
            backgroundColor: _primaryColor,
            pinned: true,
            widgetExpanded: _sessionOverview(context),
            expandedHeight: context.heightDevice * 0.25,
            title: <Widget>[
              IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.arrow_back, color: Colors.white),
              ),
            ],
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz, color: Colors.white),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                const SizedBox(height: 10.0),
                const DividerDot(),
                const SizedBox(height: 15.0),
                Padding(
                  padding: _padding,
                  child: Text('♻️ ${getMMMMEEEd(DateTime.now())}',
                      style: _smallStyle),
                ),
                _header(context, header: "Refresh brain and relax"),
                Padding(
                  padding: _padding,
                  child: ReadMoreText(
                    'one\'s ability to execute daily activities with optimal performance, endurance, and strength with the management of disease, fatigue, and stress and reduced sedentary behavio, fatigue, and stress and reduced sedentary behavio, fatigue, and stress and reduced sedentary behavio',
                    trimLines: 2,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Show less',
                    lessStyle: _smallStyle.copyWith(color: _primaryColor),
                    moreStyle: _smallStyle.copyWith(color: _primaryColor),
                    style: _smallStyle.copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                _header(context, header: "Settings"),
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
                _header(context, header: "Today exercises"),
                const TodayExerciseItem(
                    header: '🌞 Morning exercises', level: Level.beginner),
                const SizedBox(height: 10.0),
                const TodayExerciseItem(
                    header: '🌚 Afternoon exercises', level: Level.advanced),
                const SizedBox(height: 40.0),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _header(BuildContext context, {required String header}) {
    return Padding(
      padding: _padding.copyWith(top: 10.0, bottom: 10.0),
      child: Text(
        header,
        style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Container _sessionOverview(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: kToolbarHeight),
          Text(
            'Season 1',
            style: context.titleLarge.copyWith(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(height: 5.0),
          Text('Day 1 (Refresh brain)',
              style: _smallStyle.copyWith(color: Colors.grey)),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text.rich(
              TextSpan(
                style: _smallStyle.copyWith(color: Colors.grey),
                children: [
                  ...[
                    '🌞',
                    ' Morning exercises | ',
                    '🌚',
                    ' Afternoon exercises | ',
                    '🔥',
                    ' 3500 Calories burn'
                  ].map((element) => TextSpan(text: element)),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
