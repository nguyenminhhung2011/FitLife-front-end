import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PlanOverViewProgressField extends StatelessWidget {
  const PlanOverViewProgressField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.2),
            blurRadius: 5.0,
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Part 1 Fitness plan',
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 3.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Text(
                        'Active',
                        style: context.titleSmall.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Text('Week 3', style: context.titleSmall)
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 5.0),
          SizedBox(
            width: 60,
            height: 60,
            child: CircularPercentIndicator(
              animation: true,
              animationDuration: 1000,
              radius: 30.0,
              percent: 0.5,
              center: Text(
                '2/4',
                style: context.titleSmall.copyWith(fontWeight: FontWeight.w500),
              ),
              backgroundColor: Theme.of(context).dividerColor,
              progressColor: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
