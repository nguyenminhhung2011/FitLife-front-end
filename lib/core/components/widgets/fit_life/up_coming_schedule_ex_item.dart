import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/mvvm/object/entity/upcoming_session/upcoming_session.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';

class UpComingScheduleExItem extends StatelessWidget {
  final UpComingSession upComingSession;

  const UpComingScheduleExItem({
    required this.upComingSession,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.openPageWithRouteAndParams(
          Routes.exerciseOverview, upComingSession.session.id),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
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
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    upComingSession.session.name ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.titleSmall
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    upComingSession.session.description ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.titleSmall.copyWith(
                      fontSize: 12.0,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  Text(
                    '🌟 Start in ${gemmFormat(upComingSession.time)}',
                    style: context.titleSmall.copyWith(fontSize: 12.0),
                  ),
                  const SizedBox(),
                  Wrap(spacing: 5.0, children: [
                    ...List<String>.from([
                      '${upComingSession.session.customExercise?.length ?? 0} exercises',
                      if (upComingSession.session.timePerLesson != null) ...[
                        '${upComingSession.session.timePerLesson} mins'
                      ]
                    ])
                        .map(
                          (e) => Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: context.primaryColor.withOpacity(0.1),
                              border: Border.all(
                                  width: 1, color: context.primaryColor),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Text(
                              e,
                              style: context.titleSmall.copyWith(
                                fontSize: 10.0,
                                color: context.primaryColor,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ]),
                ].expand((e) => [e, const SizedBox(height: 5.0)]).toList()
                  ..removeLast(),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: context.primaryColor.withOpacity(0.2),
                  image: const DecorationImage(
                      image: AssetImage(ImageConst.banner1), fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
