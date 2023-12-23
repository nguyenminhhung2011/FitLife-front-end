import 'package:collection/collection.dart';
import 'package:fit_life/core/components/widgets/skeleton_custom.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/me/entity/workout_plan/workout_plan.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';

class PlanOverViewGradientFieldLoading extends StatelessWidget {
  const PlanOverViewGradientFieldLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          colors: [Colors.grey.withOpacity(0.5), Colors.grey.withOpacity(0.5)],
        ),
      ),
      child: Column(
        children: [
          SkeletonContainer.circular(
            width: double.infinity,
            height: 30,
            borderRadius: BorderRadius.circular(10.0),
            color: Theme.of(context).dividerColor.withOpacity(0.2),
          ),
          const SizedBox(height: 5.0),
          const Divider(color: Colors.grey, thickness: 1),
          const SizedBox(height: 5.0),
          Row(
            children: [
              ...List.generate(
                3,
                (index) => Expanded(
                  child: SkeletonContainer.circular(
                    width: double.infinity,
                    height: 40,
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).dividerColor,
                  ),
                ),
              )
            ].expand((e) => [e, const SizedBox(width: 10.0)]).toList()
              ..removeLast(),
          ),
        ],
      ),
    );
  }
}

class PlanOverViewGradientField extends StatelessWidget {
  final WorkoutPlan currentPlan;
  const PlanOverViewGradientField({super.key, required this.currentPlan});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          colors: [Colors.grey.withOpacity(0.5), Colors.grey.withOpacity(0.5)],
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).yourGoal,
                      style: context.titleSmall
                          .copyWith(color: Colors.white, fontSize: 12.0),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      currentPlan.name,
                      style: context.titleMedium.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios_sharp,
                    color: Colors.white, size: 15.0),
              )
            ],
          ),
          const Divider(color: Colors.grey, thickness: 1),
          Row(
            children: [
              ...['2320', "", '7.5'].mapIndexed(
                (index, e) => Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.toString(),
                        style: context.titleLarge.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        switch (index) {
                          0 => S.of(context).dailySteps,
                          1 => S.of(context).burnedCal,
                          _ => S.of(context).hoursSlept,
                        },
                        style: context.titleSmall.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
