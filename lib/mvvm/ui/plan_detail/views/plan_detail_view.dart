import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/appbar.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_time_text.dart';
import 'package:fit_life/core/components/widgets/fit_life/schedule_item.dart';
import 'package:fit_life/core/components/widgets/header_custom.dart';
import 'package:fit_life/mvvm/ui/plan_detail/view_model/plan_detail_data.dart';
import 'package:fit_life/mvvm/ui/plan_detail/view_model/plan_detail_view_model.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PlanDetailView extends ConsumerStatefulWidget {
  const PlanDetailView({super.key});

  @override
  ConsumerState<PlanDetailView> createState() => _PlanDetailViewState();
}

class _PlanDetailViewState extends ConsumerState<PlanDetailView> {
  PlanDetailViewModel get viewModel =>
      ref.read(planDetailStateNotifier.notifier);
  PlanDetailData get data => ref.watch(planDetailStateNotifier).data;

  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;
  Color get _primaryColor => Theme.of(context).primaryColor;

  EdgeInsets get _padding => const EdgeInsets.symmetric(horizontal: 15.0);

  int get totalDate =>
      data.planDetail.endDate!.difference(data.planDetail.startDate!).inDays;

  int get currentDate =>
      DateTime.now().difference(data.planDetail.startDate!).inDays;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewModel.getPlanDetail();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: _backgroundColor,
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ButtonCustom(
          height: 45.0,
          radius: 5.0,
          child: Text(
            "Add new exercise",
            style: context.titleMedium
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onPress: () {
            context.openListPageWithRoute(Routes.addNewExercise);
          },
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: <Widget>[
          AppBarCustom(
            backgroundColor: _primaryColor,
            pinned: true,
            expandedHeight: context.heightDevice * 0.25,
            leading: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back),
            ),
            title: const <Widget>[],
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
            ],
            afterImage: ImageConst.banner2,
            radius: 10.0,
            // widgetExpanded: _headerBannerField(context),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                const DividerDot(),
                const SizedBox(height: 15.0),
                Padding(padding: _padding, child: _headerBannerField(context)),
                const SizedBox(height: 15.0),
                HeaderTextCustom(
                  headerText: 'Progress',
                  textStyle:
                      context.titleMedium.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                _progressField(context),
                const SizedBox(height: 5.0),
                if (data.isLoadingSchedule)
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Center(child: CircularProgressIndicator()),
                  )
                else ...[
                  Row(
                    children: [
                      const SizedBox(width: 15.0),
                      Expanded(
                        child: Text(
                          "Schedule",
                          style: context.titleMedium
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                        onPressed: () =>
                            context.openListPageWithRoute(Routes.calendar),
                        child: Text(
                          'view in calendar',
                          style: context.titleSmall.copyWith(
                            fontSize: 12.0,
                            color: _primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                  DividerTimeText(day: 1, time: DateTime.now()),
                  const SizedBox(height: 10.0),
                  ...List.generate(
                    data.planDetail.dailyWorkouts?.length ?? 0,
                    (index) => ScheduleItem(
                      item: data.planDetail.dailyWorkouts![index],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View all dates planning',
                      style: context.titleSmall.copyWith(
                          color: _primaryColor, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Divider(),
                ],
                const SizedBox(height: 45.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _progressField(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: _padding,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Theme.of(context).shadowColor.withOpacity(0.1),
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  (currentDate < totalDate)
                      ? 'Current date ${currentDate + 1}'
                      : "Finish your plan",
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(width: 10.0),
              ButtonCustom(
                enableWidth: false,
                radius: 5.0,
                height: 30.0,
                child: Text(
                  "Return",
                  style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                onPress: () {},
              )
            ],
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            width: double.infinity,
            height: context.heightDevice * 0.15,
            child: LayoutBuilder(
              builder: (_, constraints) {
                final maxWidth = constraints.maxWidth;
                final maxHeight = constraints.maxHeight;
                final itemWidth = maxWidth / 8;
                final itemHeight = maxHeight / 2;
                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: _wrapperView(itemWidth, itemHeight, context),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Wrap _wrapperView(double itemWidth, double itemHeight, BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      children: [
        for (int i = 0; i < totalDate; i++)
          SizedBox(
            width: itemWidth,
            height: itemHeight,
            child: Text.rich(
              TextSpan(
                style: context.titleMedium,
                children: [
                  TextSpan(
                    text: '🔥\n',
                    style: context.titleLarge.copyWith(
                      fontSize: 23.0,
                      color: i > currentDate
                          ? Theme.of(context).hintColor.withOpacity(0.2)
                          : null,
                    ),
                  ),
                  TextSpan(
                    text: (i + 1).toString(),
                    style: context.titleSmall.copyWith(
                        color: Theme.of(context).hintColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              textAlign: TextAlign.center,
            ),
          )
      ],
    );
  }

  Widget _headerBannerField(BuildContext context) {
    final planDetail = data.planDetail;
    final startDate = planDetail.startDate!;
    final endDate = planDetail.endDate!;
    final difference = planDetail.endDate!.difference(planDetail.startDate!);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (planDetail.name != null)
                Text(
                  planDetail.name!,
                  style: context.titleMedium.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              Text(
                getRangeDateFormat(startDate, endDate),
                style: context.titleSmall.copyWith(
                  color: Theme.of(context).hintColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '${difference.inDays} Days - ${(difference.inDays / 7).ceil()} Weeks',
                style: context.titleSmall.copyWith(
                  color: Theme.of(context).hintColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                ),
              )
            ].expand((e) => [e, const SizedBox(height: 5.0)]).toList()
              ..removeLast(),
          ),
        ),
        SizedBox(
          width: 60,
          height: 60,
          child: CircularPercentIndicator(
            animation: true,
            animationDuration: 1000,
            radius: 30.0,
            percent: planDetail.progress ?? 0,
            center: Text(
              '${((planDetail.progress ?? 0) * 100).toStringAsFixed(0)}%',
              style: context.titleSmall.copyWith(fontWeight: FontWeight.w600),
            ),
            backgroundColor: Theme.of(context).dividerColor,
            progressColor: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
