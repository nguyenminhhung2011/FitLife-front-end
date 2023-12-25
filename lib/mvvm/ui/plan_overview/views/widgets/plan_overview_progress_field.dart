import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/extensions/double_extension.dart';
import 'package:fit_life/core/components/widgets/skeleton_custom.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PlanOverviewProgressLoading extends StatelessWidget {
  const PlanOverviewProgressLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.2),
            blurRadius: 5.0,
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SkeletonContainer.circular(
                  width: double.infinity,
                  height: 25,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                SkeletonContainer.circular(
                  width: double.infinity,
                  height: 25,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ]
                  .expand((element) => [element, const SizedBox(height: 5.0)])
                  .toList()
                ..removeLast(),
            ),
          ),
          const SizedBox(width: 10.0),
          SkeletonContainer.circular(
            width: 50,
            height: 50,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ],
      ),
    );
  }
}

class PlanOverViewProgressField extends StatelessWidget {
  final WorkoutPlan currentPlan;
  const PlanOverViewProgressField({super.key, required this.currentPlan});

  @override
  Widget build(BuildContext context) {
    final dateNow = DateTime.now();
    final dailyPlans = currentPlan.dailyWorkouts ?? [];
    int currentDailyPlan = dailyPlans.indexWhere((item) {
      final planTime = DateTime.fromMillisecondsSinceEpoch(item.time!);
      return (getYmdFormat(planTime) == getYmdFormat(dateNow));
    });
    final progressPercent = ((DateTime.now().day -
                DateTime.fromMillisecondsSinceEpoch(currentPlan.startDate!)
                    .day) /
            DateTime.fromMillisecondsSinceEpoch(
                    currentPlan.endDate! - currentPlan.startDate!)
                .day)
        .minMaxRequired(0, 1);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.2),
            blurRadius: 5.0,
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (currentDailyPlan != -1)
                  Text(
                    'Part ${(dailyPlans[currentDailyPlan]).name}',
                    style: context.titleMedium
                        .copyWith(fontWeight: FontWeight.w600),
                  )
                else
                  Text("You don't have any plan today",
                      style: context.titleMedium
                          .copyWith(fontWeight: FontWeight.w600)),
                const SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 3.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Text(
                        'Active',
                        style: context.titleSmall.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Text(
                      'Week ${getWeekIndex(startDate: DateTime.fromMillisecondsSinceEpoch(currentPlan.startDate!), endDate: DateTime.fromMillisecondsSinceEpoch(currentPlan.endDate!), targetDate: dateNow)}',
                      style: context.titleSmall,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 5.0),
          SizedBox(
            width: 60,
            height: 60,
            child: CircularPercentIndicator(
              animation: true,
              animationDuration: 1000,
              radius: 30.0,
              percent: progressPercent,
              center: Text(
                "${(progressPercent * 100).round()}%",
                style: context.titleSmall.copyWith(fontWeight: FontWeight.w500),
              ),
              backgroundColor: Theme.of(context).dividerColor,
              progressColor: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
