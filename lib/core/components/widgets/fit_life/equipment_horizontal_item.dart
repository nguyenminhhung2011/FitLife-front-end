import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class EquipmentHorizontalItem extends StatelessWidget {
  const EquipmentHorizontalItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final smallStyle = context.titleSmall.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        color: Theme.of(context).hintColor);
    return SizedBox(
      width: context.widthDevice * 0.9,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 15.0),
          Image.asset(
            ImageConst.dumbbell,
            width: context.heightDevice * 0.2,
            height: double.infinity,
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'DumBell',
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.bold),
                ),
                Text('Countable : 4 dumbbell', style: smallStyle, maxLines: 1),
                Text(
                  'This is description about how to use dumbbell for this exercise',
                  style: smallStyle,
                  maxLines: 2,
                )
              ].expand((e) => [e, const SizedBox(height: 5.0)]).toList()
                ..removeLast(),
            ),
          ),
        ],
      ),
    );
  }
}
