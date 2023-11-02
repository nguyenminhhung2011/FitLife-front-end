import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';

class UpComingWorkoutItem extends StatelessWidget {
  const UpComingWorkoutItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final smallTextStyle = context.titleSmall.copyWith(fontSize: 11.0);
    return GestureDetector(
      onTap: () => context.openListPageWithRoute(Routes.exerciseSchedule),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Theme.of(context).cardColor,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor.withOpacity(0.1),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(7.0),
                  child: Image.asset(
                    ImageConst.banner1,
                    fit: BoxFit.cover,
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Dash Strength',
                        style: context.titleMedium
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5.0),
                      Text('🕑 5:00 pm * 45 min', style: smallTextStyle),
                      const SizedBox(height: 2.0),
                      Text('🔥 200 kCalo', style: smallTextStyle),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 15.0,
            bottom: 0.0,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Text(
                'Enable notification',
                style: context.titleSmall.copyWith(
                  fontSize: 10.0,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
