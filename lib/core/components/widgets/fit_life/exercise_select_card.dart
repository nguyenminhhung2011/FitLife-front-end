import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:flutter/material.dart';

class ExerciseSelectCardWidget extends StatelessWidget {
  final Exercise exercise;
  final bool isSelected;
  final VoidCallback? onSelected;

  const ExerciseSelectCardWidget({
    super.key,
    required this.exercise,
    this.isSelected = false,
     this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        width: double.infinity,
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: isSelected
              ? Theme.of(context).primaryColor.withOpacity(0.3)
              : Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.1),
              blurRadius: 5.0,
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exercise.name,
                    overflow: TextOverflow.ellipsis,
                    style:
                        context.titleSmall.copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 5.0),
                  if (exercise.description?.isNotEmpty ?? false)
                    Text(
                      exercise.description!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: context.titleSmall.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).hintColor,
                        fontSize: 11.0,
                      ),
                    ),
                  const SizedBox(height: 5.0),
                  if (exercise.target != null)
                    Text(
                      '🎯 Target: ${exercise.target}',
                      style: context.titleSmall.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).hintColor,
                        fontSize: 11.0,
                      ),
                    ),
                  const SizedBox(height: 5.0),
                  if (exercise.caloriesPerMinute != null &&
                      exercise.caloriesPerMinute != 0.0)
                    Text(
                      '🔩 Calories: ${exercise.caloriesPerMinute}',
                      style: context.titleSmall.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).hintColor,
                        fontSize: 11.0,
                      ),
                    )
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(7.0),
    
              ///[😪 Dumb code] change image url here
              child: Image.asset(ImageConst.banner1,
                  width: 100.0, height: 100.0, fit: BoxFit.cover),
            ),
          ].expand((e) => [e, const SizedBox(width: 10.0)]).toList()
            ..removeLast(),
        ),
      ),
    );
  }
}
