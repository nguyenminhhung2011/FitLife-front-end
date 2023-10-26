import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class DividerTimeText extends StatelessWidget {
  final int day;
  final DateTime time;
  const DividerTimeText({
    super.key,
    required this.day,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(child: Divider(thickness: 1.2)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Day $day',
              style: context.titleSmall.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5.0),
            Text(
              getYmdFormat(time),
              style: context.titleSmall
                  .copyWith(color: Theme.of(context).hintColor),
            )
          ],
        ),
        const Expanded(child: Divider(thickness: 1.2)),
      ].expand((e) => [e, const SizedBox(width: 10.0)]).toList()
        ..removeLast(),
    );
  }
}
