import 'package:fit_life/core/components/layout/setting_layout/controller/setting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/ui/plan_overview/views/widgets/plan_overview_card.dart';
import 'package:fit_life/mvvm/ui/plan_overview/views/widgets/plan_overview_gradient_field.dart';
import 'package:fit_life/mvvm/ui/plan_overview/views/widgets/plan_overview_progress_field.dart';
import 'package:fit_life/mvvm/ui/plan_overview/views/widgets/plan_overview_upcoming_session.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                      PlanOverViewGradientField(currentPlan: currentPlan),
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
