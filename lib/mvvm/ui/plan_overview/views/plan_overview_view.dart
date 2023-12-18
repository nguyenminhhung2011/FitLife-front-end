import 'dart:math';

import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/widgets/fit_life/workout_plan_item.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/mvvm/me/entity/plan/current_plan.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/add_workout_plan_dto.dart';
import 'package:fit_life/mvvm/ui/plan_overview/view_model/plan_overview_data.dart';
import 'package:fit_life/mvvm/ui/plan_overview/view_model/plan_overview_view_model.dart';

import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/header_custom.dart';
import 'package:fit_life/mvvm/ui/plan_overview/views/widgets/plan_overview_card.dart';
import 'package:fit_life/mvvm/ui/plan_overview/views/widgets/plan_overview_gradient_field.dart';
import 'package:fit_life/mvvm/ui/plan_overview/views/widgets/plan_overview_progress_field.dart';
import 'package:fit_life/mvvm/ui/plan_overview/views/widgets/plan_overview_upcoming_session.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlanOverViewView extends ConsumerStatefulWidget {
  const PlanOverViewView({super.key});

  @override
  ConsumerState<PlanOverViewView> createState() => _PlanOverViewViewState();
}

class _PlanOverViewViewState extends ConsumerState<PlanOverViewView> {
  PlanOverViewViewModel get _vm => ref.read(planOverviewStateNotifier.notifier);

  PlanOverViewData get _data => ref.watch(planOverviewStateNotifier).data;

  CurrentPlan? get _currentPlan => _data.currentPlan;

  Color get _backGroundColor => Theme.of(context).scaffoldBackgroundColor;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _vm.getSessionPlanHistory();
        _vm.getCurrentPlan();
      }
    });

    super.initState();
  }

  void _listenStateChange(PlanOverViewState state) {
    state.maybeWhen(
      getCurrentPlanFailed: (_, error) =>
          context.showSnackBar("🐛[Get current plan] $error"),
      getSessionPlanHistoryFailed: (_, error) =>
          context.showSnackBar("🐛[Get session plan] $error"),
      createPlanFailed: (_, message) =>
          context.showSnackBar("🐛[Create session plan] $message"),
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
        planOverviewStateNotifier, (_, next) => _listenStateChange(next));

    return Scaffold(
      backgroundColor: _backGroundColor,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.withOpacity(0.8),
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(ImageConst.icon, width: 40.0, height: 40.0),
            const SizedBox(width: 5.0),
            Text(
              'Current plan',
              style: context.titleMedium.copyWith(fontWeight: FontWeight.w600),
            )
          ],
        ),
        // title: ,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: RefreshIndicator(
          onRefresh: () async {
            Future.delayed(Duration.zero, () {
              _vm.getSessionPlanHistory();
              _vm.getCurrentPlan();
            });
          },
          child: _body(context),
        ),
      ),
    );
  }

  ListView _body(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 0),
      children: [
        Container(
          height: context.heightDevice * 0.72,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConst.banner3), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (_data.isLoadingCurrentPlan) ...[
                const PlanOverViewGradientFieldLoading(),
                const PlanOverviewProgressLoading(),
              ] else if (_currentPlan != null) ...[
                PlanOverViewGradientField(currentPlan: _currentPlan!),
                PlanOverViewProgressField(currentPlan: _currentPlan!),
              ],
            ].expand((e) => [e, const SizedBox(height: 15.0)]).toList(),
          ),
        ),
        SizedBox(
          height: context.heightDevice * 0.23,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: LayoutBuilder(
                  builder: (_, constraints) {
                    return PlanOverViewUpComingSession(
                      maxHeight: constraints.maxHeight,
                    );
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Theme.of(context).cardColor.withOpacity(0.5),
                  child: PlanOverViewCard(context: context),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        HeaderTextCustom(
          headerText: 'Plan history',
          isShowSeeMore: true,
          onPress: () => context.openViewMorePlan(),
          textStyle: context.titleMedium.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10.0),
        if (_data.isLoadingWorkoutPlans)
          ...List.generate(3, (index) => const WorkoutPlanSkelton())
        else ...[
          ..._data.workoutPlans
                  ?.map(
                    (e) => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _renderTimeToText(e.startDate!, e.endDate!),
                        WorkoutPlanItemWidget(
                          workoutPlan: e,
                          progress: min(
                            (DateTime.now().day -
                                    DateTime.fromMillisecondsSinceEpoch(
                                            e.startDate!)
                                        .day) /
                                DateTime.fromMillisecondsSinceEpoch(
                                        e.endDate! - e.startDate!)
                                    .day,
                            1.0,
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList() ??
              const [],
        ],
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ButtonCustom(
            height: 40.0,
            radius: 10.0,
            padding: const EdgeInsets.symmetric(vertical: 8),
            loading: _data.isLoadingCreatePlan,
            child: Text(
              "Create new plan",
              style: context.titleSmall
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            onPress: () async {
              final res = await context.openListPageWithRoute(Routes.addPlan);
              if (res is AddWorkoutPlanDto) {
                await _vm.createPlan(dto: res);
              }
            },
          ),
        ),
        const SizedBox(height: 100),
      ],
    );
  }

  Padding _renderTimeToText(int start, int end) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 4, bottom: 4),
      child: Text(
        getRangeDateFormat(
          DateTime.fromMillisecondsSinceEpoch(start),
          DateTime.fromMillisecondsSinceEpoch(end),
        ),
        style: context.titleSmall
            .copyWith(color: Theme.of(context).hintColor, fontSize: 12.0),
      ),
    );
  }
}
