import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/image_custom.dart';
import 'package:fit_life/mvvm/me/entity/custom_exercise/custom_exercise.dart';
import 'package:flutter/material.dart';

class PreviewExerciseItem extends StatelessWidget {
  final CustomExercise customExercise;
  const PreviewExerciseItem({super.key, required this.customExercise});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10.0),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: const ImageCustom(
                  imageUrl: ImageConst.banner3,
                  isNetworkImage: false,
                  width: 90.0,
                  height: 90.0,
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      customExercise.exercise.name,
                      style: context.titleMedium
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      '${customExercise.time} seconds',
                      style: context.titleSmall
                          .copyWith(color: Theme.of(context).hintColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10.0),
              const Icon(Icons.arrow_forward_ios_outlined, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
