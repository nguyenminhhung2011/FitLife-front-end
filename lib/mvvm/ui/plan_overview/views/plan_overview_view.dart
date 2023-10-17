import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/handle_time.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/image_const.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/fit_life/schedule_item.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/header_custom.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/plan_overview/views/widgets/plan_overview_card.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/plan_overview/views/widgets/plan_overview_gradient_field.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/plan_overview/views/widgets/plan_overview_progress_field.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/plan_overview/views/widgets/plan_overview_upcoming_session.dart';

class PlanOverViewView extends StatefulWidget {
  const PlanOverViewView({super.key});

  @override
  State<PlanOverViewView> createState() => _PlanOverViewViewState();
}

class _PlanOverViewViewState extends State<PlanOverViewView> {
  Color get _backGroundColor => Theme.of(context).scaffoldBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.withOpacity(0.8),
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(ImageConst.icon, width: 40.0, height: 40.0),
            const SizedBox(width: 5.0),
            Text(
              'Session plan',
              style: context.titleMedium.copyWith(fontWeight: FontWeight.w600),
            )
          ],
        ),
        // title: ,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          children: [
            Container(
              height: context.heightDevice * 0.72,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConst.banner3), fit: BoxFit.cover),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PlanOverViewGradientField(),
                  SizedBox(height: 15.0),
                  PlanOverViewProgressField(),
                  SizedBox(height: 15.0)
                ],
              ),
            ),
            SizedBox(
              height: context.heightDevice * 0.23,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: LayoutBuilder(builder: (_, constraints) {
                      return PlanOverViewUpComingSession(
                        maxHeight: constraints.maxHeight,
                      );
                    }),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      color: Theme.of(context).cardColor.withOpacity(0.5),
                      child: PlanOverViewCard(context: context),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            HeaderTextCustom(
              headerText: 'My schedule',
              isShowSeeMore: true,
              textStyle:
                  context.titleMedium.copyWith(fontWeight: FontWeight.w600),
            ),
            _renderTimeToText(context, time: DateTime.now()),
            const SizedBox(height: 10.0),
            const ScheduleItem(),
            const SizedBox(height: 10.0),
            _renderTimeToText(
              context,
              time: DateTime.now().add(const Duration(days: 1)),
            ),
            const SizedBox(height: 10.0),
            const ScheduleItem(),
            const ScheduleItem(),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Padding _renderTimeToText(BuildContext context, {required DateTime time}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Text(
        getMMMMEEEd(time),
        style: context.titleSmall
            .copyWith(color: Theme.of(context).hintColor, fontSize: 12.0),
      ),
    );
  }
}
