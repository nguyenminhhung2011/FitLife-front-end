import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';

class ExerciseChidItem extends StatelessWidget {
  final Exercise exercise;
  const ExerciseChidItem({
    super.key,
    required this.exercise,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.openListPageWithRoute(Routes.exerciseDetail),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(ImageConst.banner1,
                  width: 100.0, height: 100.0, fit: BoxFit.cover),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    exercise.name,
                    style: context.titleSmall
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    exercise.description,
                    style: context.titleSmall.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: 12.0,
                    ),
                  ),
                  Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: [
                      '${exercise.reps} mins',
                      '${exercise.BodyPart} category',
                      '${exercise.caloriesPerMinute} calories'
                    ]
                        .map(
                          (e) => Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.1),
                                border: Border.all(
                                    width: 1,
                                    color: Theme.of(context).primaryColor),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(
                              e,
                              style: context.titleSmall.copyWith(
                                  fontSize: 10.0,
                                  color: Theme.of(context).primaryColor),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ].expand((e) => [e, const SizedBox(height: 5.0)]).toList()
                  ..removeLast(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
