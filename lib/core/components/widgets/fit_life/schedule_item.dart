import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/handle_time.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  gemmFormat(DateTime.now()),
                  style: context.titleLarge.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  '⌚ 30 mins',
                  style: context.titleSmall.copyWith(color: Colors.white),
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
                    'Cyclone with Alastar',
                    overflow: TextOverflow.ellipsis,
                    style: context.titleMedium
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 2.0),
                  Text(
                    'Cyclone studio',
                    style: context.titleSmall
                        .copyWith(color: Theme.of(context).hintColor),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Theme.of(context).primaryColor.withOpacity(0.6),
                    ),
                    child: Text(
                      'On-demand activity',
                      style: context.titleSmall.copyWith(
                        color: Theme.of(context).hintColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
