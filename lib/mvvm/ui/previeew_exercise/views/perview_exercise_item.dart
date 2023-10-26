import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/image_custom.dart';
import 'package:flutter/material.dart';

class PreviewExerciseItem extends StatelessWidget {
  const PreviewExerciseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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

                  /// [🌚 Dumb] => Change to true if is real data
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
                      'Palm Down Wrist Curl Over Bench',
                      style: context.titleMedium
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      '45 seconds',
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
