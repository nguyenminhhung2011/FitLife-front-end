import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/object/entity/trainer/trainer.dart';
import 'package:flutter/material.dart';

class TrainerHorizontalItemView extends StatelessWidget {
  const TrainerHorizontalItemView({
    super.key,
    required this.trainer,
  });

  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 120.0,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Theme.of(context).shadowColor.withOpacity(0.1),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(trainer.image,
                width: 120.0, height: 80.0, fit: BoxFit.cover),
          ),
          const SizedBox(height: 4.0),
          Text(trainer.name, style: context.titleSmall)
        ],
      ),
    );
  }
}
