import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class WorkoutPlanItemWidget extends StatelessWidget {
  const WorkoutPlanItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.openListPageWithRoute(Routes.planDetail),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
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
          children: [
            Container(
              width: 120.0,
              constraints: const BoxConstraints(minHeight: 120.0),
              decoration: const BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "14 days",
                    style: context.titleLarge.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    getRangeDateFormat(DateTime.now(),
                        DateTime.now().add(const Duration(days: 1))),
                    textAlign: TextAlign.center,
                    style: context.titleSmall
                        .copyWith(color: Colors.white, fontSize: 8.0),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hanh trinh giam can tu con so 0',
                      style: context.titleMedium
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 2.0),
                    const SizedBox(height: 10.0),
                    _progressField(context),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _progressField(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Theme.of(context).primaryColor.withOpacity(0.6),
            ),
            child: Text(
              'On-demand activity',
              textAlign: TextAlign.center,
              style: context.titleSmall.copyWith(
                color: Theme.of(context).hintColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        SizedBox(
          width: 40,
          height: 40,
          child: CircularPercentIndicator(
            animation: true,
            animationDuration: 1000,
            radius: 20.0,
            percent: 0.5,
            center: Text(
              '20%',
              style: context.titleSmall
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 10.0),
            ),
            backgroundColor: Theme.of(context).dividerColor,
            progressColor: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
