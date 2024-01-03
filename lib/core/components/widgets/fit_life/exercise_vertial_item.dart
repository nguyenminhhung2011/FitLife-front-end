import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/object/entity/exercise/exercise.dart';
import 'package:flutter/material.dart';

class ExerciseVerticalItem extends StatelessWidget {
  final Exercise exercise;
  const ExerciseVerticalItem({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      width: double.infinity,
      padding: const EdgeInsets.all(5.0),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child:
                Text('♻️', style: context.titleMedium.copyWith(fontSize: 20.0)),
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
                Text(
                  '🕑 15 m 10 s - rest 10 s',
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
    );
  }
}
