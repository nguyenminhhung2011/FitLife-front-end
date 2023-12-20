import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/core/components/widgets/fit_life/schedule_item.dart';
import 'package:fit_life/mvvm/me/entity/daily_workout/daily_workout.dart';
import 'package:flutter/material.dart';

class AllDailyWorkoutDialog extends StatelessWidget {
  final List<DailyWorkout>? dailyWorkouts;
  const AllDailyWorkoutDialog({
    super.key,
    this.dailyWorkouts,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: context.heightDevice * .9,
        minHeight: context.heightDevice * .8,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const SizedBox(height: 15.0),
            const Align(
              alignment: Alignment.center,
              child: DividerDot(),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "All daily workout view",
                style:
                    context.titleMedium.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10.0),
            const Divider(),
            const SizedBox(height: 10.0),
            ...List.generate(
              dailyWorkouts?.length ?? 0,
              (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 10.0),
                    child: Text(
                      getYmdFormat(DateTime.fromMillisecondsSinceEpoch(
                          dailyWorkouts![index].time!)),
                      style: context.titleSmall
                          .copyWith(color: Theme.of(context).hintColor),
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  ScheduleItem(
                    item: dailyWorkouts![index],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
