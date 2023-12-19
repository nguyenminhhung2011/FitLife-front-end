import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/core/components/widgets/fit_life/equipment_horizontal_item.dart';
import 'package:fit_life/core/components/widgets/fit_life/exercise_vertial_item.dart';
import 'package:fit_life/core/components/widgets/loading_page.dart';
import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:fit_life/mvvm/me/entity/session/setting_session.dart';
import 'package:fit_life/mvvm/ui/exercise_schedule/view_model/exercise_overview_data.dart';
import 'package:fit_life/mvvm/ui/exercise_schedule/view_model/exercise_overview_view_model.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fit_life/core/components/widgets/appbar.dart';
import 'package:readmore/readmore.dart';

class ExerciseOverviewView extends ConsumerStatefulWidget {
  const ExerciseOverviewView({super.key});

  @override
  ConsumerState<ExerciseOverviewView> createState() =>
      _ExerciseOverviewViewState();
}

class _ExerciseOverviewViewState extends ConsumerState<ExerciseOverviewView> {
  ExerciseOverviewViewModel get _vm =>
      ref.read(exerciseOverviewStateNotifier.notifier);

  ExerciseOverviewData get _data =>
      ref.watch(exerciseOverviewStateNotifier).data;

  ExerciseOverviewState get _state => ref.watch(exerciseOverviewStateNotifier);

  Session? get _session => _data.sessionPlan;

  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  Color get _primaryColor => Theme.of(context).primaryColor;

  EdgeInsets get _padding => const EdgeInsets.symmetric(horizontal: 15.0);

  TextStyle get _smallStyle =>
      context.titleSmall.copyWith(color: Theme.of(context).hintColor);

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await _vm.getExerciseOverview();
    });
    super.initState();
  }

  void _listenStateChange(ExerciseOverviewState state) {
    state.maybeWhen(
      getSessionPlanFailed: (_, error) =>
          context.showSnackBar("🐛[Get session plan] $error"),
      updateSettingSessionFailed: (_, error) =>
          context.showSnackBar("🐛[Update setting session] $error"),
      orElse: () {},
    );
  }

  void _openSettingExercise() async {
    if (_session != null) {
      final show = await context.settingExerciseBottom(
        SettingSession.fromSession(_session!),
      );

      if (show is SettingSession) {
        _vm.updateSettingSession(show);
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
        exerciseOverviewStateNotifier, (_, next) => _listenStateChange(next));
    return Stack(
      children: [
        if (_session != null)
          _body(context)
        else
          Scaffold(backgroundColor: _backgroundColor),
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

  Scaffold _body(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomSheet: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            ButtonCustom(
              width: 45.0,
              height: 45.0,
              radius: 5.0,
              onPress: _openSettingExercise,
              child: const Icon(Icons.settings, color: Colors.white, size: 16),
            ),
            const SizedBox(width: 5.0),
            Expanded(
              child: ButtonCustom(
                height: 45.0,
                radius: 5.0,
                onPress: () {
                  if (_data.sessionPlan?.customExercise?.isNotEmpty ?? false) {
                    context.openPageWithRouteAndParams(
                        Routes.previewExercise, _session);
                  }
                },
                child: Text(
                  'Start practice',
                  style: context.titleMedium.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: <Widget>[
          AppBarCustom(
            pinned: true,
            backgroundColor: Colors.grey.withOpacity(0.4),
            widgetExpanded: Image.asset(
              ImageConst.banner1,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            expandedHeight: context.heightDevice * 0.25,
            title: <Widget>[
              IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.arrow_back),
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
                  child: Text(
                    _session?.name ?? "",
                    style: context.titleLarge
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 22.0),
                  ),
                ),
                const SizedBox(height: 10.0),
                _sessionSadistic(context),
                const SizedBox(height: 15.0),
                Padding(
                  padding: _padding,
                  child: Text(
                    'Description',
                    style: context.titleMedium
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: _padding,
                  child: ReadMoreText(
                    _session?.description ?? "",
                    trimLines: 2,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Show less',
                    lessStyle: _smallStyle.copyWith(color: _primaryColor),
                    moreStyle: _smallStyle.copyWith(color: _primaryColor),
                    style: _smallStyle.copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 15.0),
                _headerRowWidget(
                    header: 'Equipments',
                    trailing: '${_session?.equipments?.length ?? 0} equips'),
                const SizedBox(height: 10.0),
                SizedBox(
                  width: double.infinity,
                  height: context.heightDevice * 0.15,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _session?.equipments?.length ?? 4,
                    itemBuilder: (_, index) => const EquipmentHorizontalItem(),
                  ),
                ),
                const SizedBox(height: 15.0),
                _headerRowWidget(
                    header: 'Exercises',
                    trailing: '${_session?.customExercise?.length ?? 0} exs'),
                const SizedBox(height: 10.0),
                ..._session?.customExercise
                        ?.map((e) => ExerciseVerticalItem(exercise: e.exercise))
                        .expand((e) => [e, const SizedBox(height: 10.0)]) ??
                    <Widget>[],
                const SizedBox(height: 70.0),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _headerRowWidget({required String header, required String trailing}) {
    return Padding(
      padding: _padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            header,
            style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(trailing, style: _smallStyle),
        ],
      ),
    );
  }

  Padding _sessionSadistic(BuildContext context) {
    return Padding(
      padding: _padding,
      child: Text.rich(
        TextSpan(
          style: context.titleSmall.copyWith(fontWeight: FontWeight.w600),
          children: [
            ...[
              '🕑',
              ' ${_session?.timePerLesson ?? 0} minutes | ',
              '🔥 ',
              '${_session?.calcTarget ?? 0} calories'
            ].mapIndexed(
              (index, element) => TextSpan(
                text: element,
                style: TextStyle(
                    color: index % 2 == 0 ? null : Theme.of(context).hintColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
