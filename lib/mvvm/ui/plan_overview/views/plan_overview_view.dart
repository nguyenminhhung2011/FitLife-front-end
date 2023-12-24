import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/double_extension.dart';
import 'package:fit_life/core/components/layout/setting_layout/controller/setting_bloc.dart';
import 'package:fit_life/core/components/widgets/fit_life/workout_plan_item.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/add_workout_plan_dto.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';
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

class CurrentPlanView extends StatefulWidget {
  const CurrentPlanView({super.key});

  @override
  State<CurrentPlanView> createState() => _CurrentPlanViewState();
}

class _CurrentPlanViewState extends State<CurrentPlanView> {
  SettingBloc get _bloc => context.read<SettingBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(
        bloc: _bloc,
        builder: (context, state) {
          final currentPlan = state.data.currentPlan;
          final allDailyPlan = currentPlan?.dailyWorkouts ?? [];
          final allSession = <Session>[];
          for (var element in allDailyPlan) {
            allSession.addAll(element.sessions ?? []);
          }
          var totalCalories = 0;
          var totalExercise = 0;
          for (var element in allSession) {
            totalCalories += element.calcCompleted ?? 0;
            totalExercise += element.customExercise?.length ?? 0;
          }
          return Column(
            children: [
              if (currentPlan != null)
                Container(
                  height: context.heightDevice * 0.72,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConst.banner3),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PlanOverViewGradientField(
                        currentPlan: currentPlan,
                        caloriesBurn: totalCalories,
                        totalExercise: totalExercise,
                        totalSession: allSession.length,
                      ),
                      PlanOverViewProgressField(currentPlan: currentPlan),
                    ].expand((e) => [e, const SizedBox(height: 15.0)]).toList(),
                  ),
                )
              else ...[
                const SizedBox(height: kToolbarHeight + 80),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Theme.of(context).shadowColor.withOpacity(0.1),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).cardColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "⚡ You don't have any plan",
                        style: context.titleLarge
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        "Please create or choose your plan",
                        style: context.titleSmall,
                      )
                    ],
                  ),
                )
              ],
              if (currentPlan != null)
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
            ],
          );
        });
  }
}
