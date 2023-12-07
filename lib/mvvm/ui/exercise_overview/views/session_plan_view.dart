import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/appbar.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/action.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/level.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/view_model/session_plan_data.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/view_model/session_plan_view_model.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/views/widgets/render_setting_item.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/views/widgets/today_exercise_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readmore/readmore.dart';

class SessionPlanView extends ConsumerStatefulWidget {
  const SessionPlanView({super.key});

  @override
  ConsumerState<SessionPlanView> createState() => _SessionPlanViewState();
}

class _SessionPlanViewState extends ConsumerState<SessionPlanView> {
  SessionPlanData get _data => ref.watch(sessionPlanStateNotifier).data;

  SessionPlanViewModel get _vm => ref.read(sessionPlanStateNotifier.notifier);

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
                if (_data.date != null)
                  Padding(
                    padding: _padding,
                    child: Text('♻️ ${getMMMMEEEd(_data.date!)}',
                        style: _smallStyle),
                  ),
                _header(
                  context,
                  header: _data.title,
                ),
                Padding(
                  padding: _padding,
                  child: ReadMoreText(
                    _data.description,
                    trimLines: 2,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Show less',
                    lessStyle: _smallStyle.copyWith(color: _primaryColor),
                    moreStyle: _smallStyle.copyWith(color: _primaryColor),
                    style: _smallStyle.copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                _header(context, header: "Settings"),
                RenderSettingItem(
                  action: SettingExerciseActions.numberRound,
                  data: _data.numberOfRound,
                ),
                const SizedBox(height: 5),
                RenderSettingItem(
                  action: SettingExerciseActions.numberOfExerciseRound,
                  data: _data.numberOfExerciseRound,
                ),
                const SizedBox(height: 5),
                RenderSettingItem(
                  action: SettingExerciseActions.startWithBoot,
                  isEnable: _data.startWithBoot ?? false,
                  onChangeValue: (value) {},
                ),
                const SizedBox(height: 5),
                RenderSettingItem(
                  action: SettingExerciseActions.randomMix,
                  isEnable: _data.randomMix ?? false,
                  onChangeValue: (value) {},
                ),
                const SizedBox(height: 5),
                RenderSettingItem(
                  action: SettingExerciseActions.timForEach,
                  data: _data.timeForEach,
                ),
                const SizedBox(height: 5),
                RenderSettingItem(
                  action: SettingExerciseActions.transferTime,
                  data: _data.transferTime,
                ),
                const SizedBox(height: 5),
                RenderSettingItem(
                  action: SettingExerciseActions.breakTime,
                  data: _data.breakTime,
                ),
                const SizedBox(height: 5),
                RenderSettingItem(
                  action: SettingExerciseActions.leave,
                  data: _data.leave,
                ),
                const SizedBox(height: 5),
                _header(context, header: "Today exercises"),
                const SizedBox(height: 10.0),
                if (_data.sessions?.isNotEmpty ?? false)
                  ..._data.sessions!
                      .map(
                        (e) => TodayExerciseItem(
                          header: e.name ?? "",
                          level: e.level ?? Level.beginner,
                          id: e.id,
                        ),
                      )
                      .expand(
                        (e) => [e, const SizedBox(height: 10.0)],
                      ),
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
            _data.sessionName,
            style: context.titleLarge.copyWith(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(height: 5.0),
          Text(
            _data.sessionDescription,
            style: _smallStyle.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text.rich(
              TextSpan(
                style: _smallStyle.copyWith(color: Colors.grey),
                children: _data.tags
                    .map((element) => TextSpan(text: element))
                    .toList(),
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
