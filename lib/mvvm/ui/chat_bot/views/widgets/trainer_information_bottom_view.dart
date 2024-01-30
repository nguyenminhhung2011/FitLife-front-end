import 'package:collection/collection.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/object/entity/trainer/trainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrainerInformationBottomView extends StatelessWidget {
  final Trainer trainer;
  const TrainerInformationBottomView({super.key, required this.trainer});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 15.0),
        ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              trainer.image,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) {
                return Image.asset(ImageConst.banner2,
                    width: 50.0, height: 50.0, fit: BoxFit.cover);
              },
            )),
        const SizedBox(height: 20.0),
        Text(
          trainer.name,
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        ...[trainer.prompt, trainer.bio, trainer.greetingMessage]
            .mapIndexed(
              (index, e) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        switch (index) {
                          0 => "Prompt",
                          1 => "Bio",
                          _ => "Greeting message"
                        },
                        style: context.titleMedium
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 5.0),
                      Text(e,
                          style: context.titleSmall
                              .copyWith(color: Theme.of(context).hintColor)),
                    ],
                  ),
                ),
              ),
            )
            .expand((element) => [element, const SizedBox(height: 5.0)]),
      ],
    );
  }
}
