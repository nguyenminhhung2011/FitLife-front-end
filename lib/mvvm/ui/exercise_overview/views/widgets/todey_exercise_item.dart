import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/level.dart';
import 'package:flutter/material.dart';

class TodayExerciseItem extends StatelessWidget {
  final String header;
  final Level level;

  const TodayExerciseItem({
    super.key,
    required this.header,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      padding: const EdgeInsets.all(15.0),
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  header,
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 5.0),
                Text(
                  '💪 ${level.renderString} - Start at ${gemmFormat(DateTime.now())}',
                  style: context.titleSmall.copyWith(
                    color: Theme.of(context).hintColor,
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 15.0),
          Icon(Icons.double_arrow_rounded,
              color: Theme.of(context).primaryColor)
        ],
      ),
    );
  }
}
