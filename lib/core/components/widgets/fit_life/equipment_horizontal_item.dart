import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/image_custom.dart';
import 'package:flutter/material.dart';

class EquipmentHorizontalItem extends StatelessWidget {
  final String equipment;
  final bool isFillWidth;
  const EquipmentHorizontalItem({
    super.key,
    this.isFillWidth = false,
    required this.equipment,
  });

  @override
  Widget build(BuildContext context) {
    final smallStyle = context.titleSmall.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        color: Theme.of(context).hintColor);
    return SizedBox(
      width: isFillWidth ? double.infinity : context.widthDevice * 0.9,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 15.0),
          ImageCustom(
            imageUrl: Constant.renderEquipmentImage[equipment] ??
                Constant.renderEquipmentImage["assisted"],
            width: context.heightDevice * 0.2,
            height: double.infinity,
            isNetworkImage: true,
            fit: BoxFit.fill,
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  equipment,
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.bold),
                ),
                Text('Countable : 1 $equipment',
                    style: smallStyle, maxLines: 1),
                Text(
                  Constant.equipmentDescriptions[equipment] ??
                      Constant.equipmentDescriptions["assisted"]!,
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
