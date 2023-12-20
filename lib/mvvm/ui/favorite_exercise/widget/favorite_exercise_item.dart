import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/image_custom.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:flutter/material.dart';

class FavoriteExerciseItem extends StatelessWidget {
  const FavoriteExerciseItem({
    super.key,
    required this.exercise,
  });

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      padding: const EdgeInsets.all(5.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.1),
              blurRadius: 5.0)
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: const ImageCustom(
              imageUrl: ImageConst.banner3,
              isNetworkImage: false,
              width: 100.0,
              height: 100.0,
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  exercise.name,
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 5.0),
                Text(
                  exercise.description.isNotEmpty
                      ? exercise.description
                      : "This is descriptions of ${exercise.name}",
                  style: context.titleSmall.copyWith(
                    color: Theme.of(context).hintColor,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: [
                    '${exercise.reps ?? 0} mins',
                    '${exercise.bodyPart}',
                    '${exercise.caloriesPerMinute ?? 0} calories'
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
