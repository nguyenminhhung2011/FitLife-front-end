import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter_svg/svg.dart';

class FitnessOverViewStatistic extends StatelessWidget {
  const FitnessOverViewStatistic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).primaryColor.withOpacity(0.2),
      ),
      child: Row(
        children: [
          ...[81, 32.5, 100]
              .mapIndexed(
                (index, e) => Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          _renderIcon(index, context),
                          const SizedBox(width: 5.0),
                          _renderHeader(index, context)
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                            text: e.toString(),
                            style: context.titleLarge
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          _renderStatistic(index, context)
                        ],
                      ))
                    ],
                  ),
                ),
              )
              .expand(
                (e) => [
                  e,
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.5),
                    child: SizedBox(height: 60.0, child: VerticalDivider()),
                  )
                ],
              )
              .toList()
            ..removeLast()
        ],
      ),
    );
  }

  SvgPicture _renderIcon(int index, BuildContext context) {
    return SvgPicture.asset(
      switch (index) {
        0 => ImageConst.heartIcon,
        1 => ImageConst.listIcon,
        _ => ImageConst.caloriesIcon,
      },
      height: 18.0,
      width: 18.0,
      // ignore: deprecated_member_use
      color: Theme.of(context).primaryColor,
    );
  }

  TextSpan _renderStatistic(int index, BuildContext context) {
    return TextSpan(
        text: switch (index) { 0 => ' BPM', 1 => ' %', _ => ' Calo' },
        style: context.titleMedium);
  }

  Expanded _renderHeader(int index, BuildContext context) {
    return Expanded(
        child: Text(
      switch (index) { 0 => 'Heart Rate', 1 => 'To-do', _ => 'Calories' },
      overflow: TextOverflow.ellipsis,
      style: context.titleSmall,
    ));
  }
}
