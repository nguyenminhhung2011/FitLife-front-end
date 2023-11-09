import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/widgets/fit_life/workout_plan_item.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
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

  Color get _backGroundColor => Theme.of(context).scaffoldBackgroundColor;

  @override
  void initState() {
    _vm.getCurrentPlan();
    super.initState();
  }

  void _listenStateChange(PlanOverViewState state) {
    state.maybeWhen(
      getCurrentPlanFailed: (_, error) =>
          context.showSnackBar("🐛[Get current plan] $error"),
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
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          children: [
            Container(
              height: context.heightDevice * 0.72,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConst.banner3), fit: BoxFit.cover),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PlanOverViewGradientField(),
                  SizedBox(height: 15.0),
                  PlanOverViewProgressField(),
                  SizedBox(height: 15.0)
                ],
              ),
            ),
            SizedBox(
              height: context.heightDevice * 0.23,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: LayoutBuilder(builder: (_, constraints) {
                      return PlanOverViewUpComingSession(
                        maxHeight: constraints.maxHeight,
                      );
                    }),
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
              textStyle:
                  context.titleMedium.copyWith(fontWeight: FontWeight.w600),
            ),
            _renderTimeToText(context, time: DateTime.now()),
            const SizedBox(height: 10.0),
            const WorkoutPlanItemWidget(),
            const WorkoutPlanItemWidget(),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ButtonCustom(
                height: 40.0,
                radius: 10.0,
                child: Text(
                  "Create new plan",
                  style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                onPress: () {
                  context.openListPageWithRoute(Routes.addPlan);
                },
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Padding _renderTimeToText(BuildContext context, {required DateTime time}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Text(
        getMMMMEEEd(time),
        style: context.titleSmall
            .copyWith(color: Theme.of(context).hintColor, fontSize: 12.0),
      ),
    );
  }
}
