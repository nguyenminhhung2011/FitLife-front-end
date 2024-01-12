import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/double_extension.dart';
import 'package:fit_life/core/components/layout/setting_layout/controller/setting_bloc.dart';
import 'package:fit_life/core/components/widgets/fit_life/workout_plan_item.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/mvvm/object/entity/workout_plan/add_workout_plan_dto.dart';
import 'package:fit_life/mvvm/object/entity/workout_plan/workout_plan.dart';
import 'package:fit_life/mvvm/ui/plan_overview/view_model/plan_overview/plan_overview_data.dart';
import 'package:fit_life/mvvm/ui/plan_overview/view_model/plan_overview/plan_overview_view_model.dart';
import 'package:fit_life/mvvm/ui/plan_overview/views/widgets/current_plan_view.dart';

import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/header_custom.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlanOverViewView extends ConsumerStatefulWidget {
  const PlanOverViewView({super.key});

  @override
  ConsumerState<PlanOverViewView> createState() => _PlanOverViewViewState();
}

class _PlanOverViewViewState extends ConsumerState<PlanOverViewView> {
  PlanOverViewViewModel get _vm => ref.read(planOverviewStateNotifier.notifier);

  int? get currentPlanId =>
      context.read<SettingBloc>().data.currentUser?.userProfile?.id;

  PlanOverViewData get _data => ref.watch(planOverviewStateNotifier).data;

  WorkoutPlan? get _currentPlan => _data.currentPlan;

  Color get _backGroundColor => Theme.of(context).scaffoldBackgroundColor;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _vm.getSessionPlanHistory();
        _vm.getCurrentPlan(currentPlanId ?? 0);
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
              context
                  .read<SettingBloc>()
                  .add(const SettingEvent.getCurrentPlan());
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
        const CurrentPlanView(),
        const SizedBox(height: 10),
        HeaderTextCustom(
          headerText: 'Plan history',
          isShowSeeMore: true,
          onPress: () => context.openViewMorePlan(),
          textStyle: context.titleMedium.copyWith(fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text("Long press to change your current plan",
              style: context.titleSmall.copyWith(fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 10.0),
        if (_data.isLoadingWorkoutPlans)
          ...List.generate(3, (index) => const WorkoutPlanSkelton())
        else if (_data.workoutPlans?.isEmpty ?? false)
          Text(
            "⛔ You don't have any session yet.\n Create new session now! 💪",
            style: context.titleMedium,
            textAlign: TextAlign.center,
          )
        else ...[
          ..._data.workoutPlans?.reversed
                  .take(3)
                  .map(
                    (e) => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _renderTimeToText(e.startDate!, e.endDate!),
                        WorkoutPlanItemWidget(
                          workoutPlan: e,
                          progress: ((DateTime.now().day -
                                      DateTime.fromMillisecondsSinceEpoch(
                                              e.startDate!)
                                          .day) /
                                  DateTime.fromMillisecondsSinceEpoch(
                                          e.endDate! - e.startDate!)
                                      .day)
                              .minMaxRequired(0, 1),
                        ),
                      ],
                    ),
                  )
                  .toList() ??
              const [],
        ],
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ButtonCustom(
            height: 40.0,
            radius: 10.0,
            loading: _data.isLoadingCreatePlan,
            child: Text(
              "Create session",
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
