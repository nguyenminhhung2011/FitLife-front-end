import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/object/entity/trainer/trainer.dart';
import 'package:flutter/material.dart';

class PtItemView extends StatelessWidget {
  final Trainer trainer;
  const PtItemView({
    super.key,
    required this.trainer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: GestureDetector(
        onTap: () => context.trainerInformationBottom(trainer),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network(
                  trainer.image,
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) {
                    return Image.asset(ImageConst.banner2,
                        width: 50.0, height: 50.0, fit: BoxFit.cover);
                  },
                )),
            const SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          trainer.name,
                          style: context.titleMedium
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        '144 followers',
                        style: context.titleSmall
                            .copyWith(color: Theme.of(context).hintColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    trainer.prompt,
                    style: context.titleSmall.copyWith(
                        color: Theme.of(context).hintColor, fontSize: 14.0),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
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
