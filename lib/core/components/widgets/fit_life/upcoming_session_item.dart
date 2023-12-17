import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:intl/intl.dart';

class UpComingSessionItem extends StatelessWidget {
  final Session session;
  final Function() onPress;
  const UpComingSessionItem({
    required this.session,
    required this.onPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final smallTextStyle = context.titleSmall.copyWith(fontSize: 11.0);
    return GestureDetector(
      onTap: onPress,
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
                        session.name ?? "",
                        style: context.titleMedium
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      if (session.description != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          session.description!,
                          style: context.titleSmall.copyWith(
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                      ],
                      if (session.done ?? false) ...[
                        const SizedBox(height: 4.0),
                        Text(
                          "Completed with ${session.calcCompleted} calc burn",
                          style: context.titleSmall.copyWith(
                            color: Colors.green,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                      const SizedBox(height: 5.0),
                      Text(
                          '🕑 ${DateFormat.H().format(DateTime.now())} * ${session.timePerLesson ?? 0} min',
                          style: smallTextStyle),
                      const SizedBox(height: 2.0),
                      Text('🔥 ${session.calcTarget} kCalo',
                          style: smallTextStyle),
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
