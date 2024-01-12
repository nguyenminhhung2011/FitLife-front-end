import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/extensions/string_extensions.dart';
import 'package:fit_life/mvvm/object/entity/exercise/exercise.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';

class CategoryExerciseItemView extends StatelessWidget {
  const CategoryExerciseItemView({
    super.key,
    required this.data,
    required this.context,
  });

  final Exercise data;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          context.openPageWithRouteAndParams(Routes.exerciseDetail, data.id),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        // color: Theme.of(context).primaryColor.withOpacity(0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.name.upCaseFirstCharacter,
              style: context.titleMedium.copyWith(
                  fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
            ),
            const SizedBox(height: 4),
            Wrap(
              spacing: 5.0,
              runSpacing: 5.0,
              children: [
                '${data.reps ?? 0} mins',
                '${data.bodyPart}',
                '${data.caloriesPerMinute ?? 0} calories'
              ]
                  .map(
                    (e) => Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                          border: Border.all(
                              width: 1, color: Theme.of(context).primaryColor),
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
            const SizedBox(height: 4),
            Text(
              "🔥 ${(data.caloriesPerMinute ?? 0).round()} calories burn",
              maxLines: 2,
              style: context.titleSmall.copyWith(
                fontSize: 11.0,
                color: Theme.of(context).hintColor,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
