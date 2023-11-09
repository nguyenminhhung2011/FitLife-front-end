import 'package:fit_life/mvvm/me/entity/upcoming_schedule_exercise.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';

class UpComingScheduleExItem extends StatelessWidget {
  final UpcomingScheduleExercise? upcomingScheduleExercise;

  const UpComingScheduleExItem({
    required this.upcomingScheduleExercise,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (upcomingScheduleExercise == null) {
      return const SizedBox();
    }
    final exercise = upcomingScheduleExercise!.exercises;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
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
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  upcomingScheduleExercise?.title ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style:
                      context.titleSmall.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  upcomingScheduleExercise?.description ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.titleSmall.copyWith(
                    fontSize: 12.0,
                    color: Theme.of(context).hintColor,
                  ),
                ),
                Text(
                  '🌟 Start in ${gemmFormat(upcomingScheduleExercise?.startAt ?? DateTime.now())}',
                  style: context.titleSmall.copyWith(fontSize: 12.0),
                ),
                const SizedBox(),
                Wrap(spacing: 5.0, children: [
                  ...List<String>.from([
                    '${exercise?.length ?? 0} exercises',
                    if (upcomingScheduleExercise?.minutes != null) ...[
                      '${upcomingScheduleExercise?.minutes} mins'
                    ]
                  ])
                      .map(
                        (e) => Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: context.primaryColor.withOpacity(0.1),
                            border: Border.all(
                                width: 1, color: context.primaryColor),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            e,
                            style: context.titleSmall.copyWith(
                              fontSize: 10.0,
                              color: context.primaryColor,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ]),
              ].expand((e) => [e, const SizedBox(height: 5.0)]).toList()
                ..removeLast(),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: context.primaryColor.withOpacity(0.2),
                image: const DecorationImage(
                  ///[🌟 Change to internet image here]
                  image: AssetImage(ImageConst.banner1),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
