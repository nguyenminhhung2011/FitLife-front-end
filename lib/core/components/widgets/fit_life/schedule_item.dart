import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/mvvm/object/entity/daily_workout/daily_workout.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';

class ScheduleItem extends StatelessWidget {
  final DailyWorkout item;
  const ScheduleItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final totalTimeExercise = (item.execPerRound != null &&
            item.numberRound != null &&
            item.timeForEachExe != null)
        ? item.execPerRound! * item.numberRound! * item.timeForEachExe! / 60
        : -1;

    return GestureDetector(
      onTap: () =>
          context.openPageWithRouteAndParams(Routes.sessionPlan, item),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.1),
              blurRadius: 5.0,
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 120.0,
              constraints: const BoxConstraints(minHeight: 120.0),
              decoration: const BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    gemmFormat(DateTime.fromMillisecondsSinceEpoch(
                        item.time ?? DateTime.now().millisecondsSinceEpoch)),
                    style: context.titleLarge.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  if (totalTimeExercise != -1)
                    Text(
                      '⌚ ${totalTimeExercise.toStringAsFixed(0)} mins',
                      style: context.titleSmall.copyWith(color: Colors.white),
                    )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item.name,
                      overflow: TextOverflow.ellipsis,
                      style: context.titleMedium
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      item.description,
                      style: context.titleSmall
                          .copyWith(color: Theme.of(context).hintColor),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Theme.of(context).primaryColor.withOpacity(0.6),
                      ),
                      child: Text(
                        'On-demand activity',
                        style: context.titleSmall.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
