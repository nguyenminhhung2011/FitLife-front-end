import 'dart:math';

import 'package:collection/collection.dart';
import 'package:fit_life/core/components/widgets/loading_page.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/me/entity/calories_chart/calories_chart.dart';
import 'package:fit_life/mvvm/me/entity/chart/fit_overview.dart';
import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/ui/fit_overview/view_model/fit_overview_data.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/fit_life/exercise_category.dart';
import 'package:fit_life/core/components/widgets/fit_life/line_chart.dart';
import 'package:fit_life/core/components/widgets/fit_life/upcoming_session_item.dart';
import 'package:fit_life/core/components/widgets/header_custom.dart';
import 'package:fit_life/core/components/widgets/range_date_picker_custom.dart';
import 'package:fit_life/mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart';
import 'package:fit_life/mvvm/ui/fit_overview/views/widgets/fit_ness_over_view_statistic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FitOverViewView extends ConsumerStatefulWidget {
  const FitOverViewView({super.key});

  @override
  ConsumerState<FitOverViewView> createState() => _FitOverViewViewState();
}

class _FitOverViewViewState extends ConsumerState<FitOverViewView> {
  FitOverViewViewModel get _vm =>
      ref.read<FitOverViewViewModel>(fitOverViewNotifier.notifier);

  FitOverViewData get _data => ref.watch(fitOverViewNotifier).data;

  List<BodyPart>? get _exerciseCategories => _data.exerciseCategories;

  List<DateTime> get _rangeDate => _data.rangeDate;

  FitOverview? get _overviewData => _data.overviewData;

  CaloriesChart get _caloriesChart => _data.caloriesChart;

  int get _findMaxCalories => _caloriesChart.calories.reduce(max);

  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  final RangeDateController _rangeDateController = RangeDateController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        Future.delayed(Duration.zero, () {
          _vm.getUpcomingSession();
          _vm.getBodyPart();
          _vm.onSelectedDate(_rangeDateController.listDate);
        });
      }
    });
    super.initState();
  }

  void _onSelectedDate() async {
    final result = await context.pickWeekRange(_rangeDateController);
    if (result?.isNotEmpty ?? false) {
      _vm.onSelectedDate(result!);
    }
  }

  @override
  void dispose() {
    _rangeDateController.dispose();
    super.dispose();
  }

  void _listenStateChange(FitOverViewState state) {
    state.maybeWhen(
      selectedDateSuccess: (_) {
        if (_data.rangeDate.isNotEmpty) {
          _vm.getCaloriesChart();
        }
      },
      getBodyPartFailed: (_, message) =>
          context.showSnackBar("🐛[Get exercise category] $message"),
      getUpComingFailed: (_, message) {
        context.showSnackBar("🐛[Get upcoming exercise] $message");
      },
      getCaloriesChartFailed: (_, message) =>
          context.showSnackBar("🐛[Get calories chart] $message"),
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(fitOverViewNotifier, (_, next) => _listenStateChange(next));

    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: _backgroundColor,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(ImageConst.icon, width: 40.0, height: 40.0),
            const SizedBox(width: 5.0),
            Text(
              'Fitness overview',
              style: context.titleMedium.copyWith(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          Future.delayed(Duration.zero, () {
            _vm.getBodyPart();
            _vm.getCaloriesChart();
            _vm.getUpcomingSession();
          });
        },
        child: _body(context),
      ),
    );
  }

  ListView _body(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            const SizedBox(width: 15.0),
            if (_rangeDate.isNotEmpty)
              Expanded(
                child: Text(
                  getRangeDateFormat(_rangeDate.first, _rangeDate.last),
                  style: context.titleSmall.copyWith(fontSize: 12.0),
                ),
              ),
            ButtonCustom(
              enableWidth: false,
              onPress: _onSelectedDate,
              radius: 5.0,
              height: 30.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(CupertinoIcons.calendar_badge_minus,
                      color: Colors.white, size: 16),
                  Text(
                    ' Selected date',
                    style: context.titleSmall.copyWith(
                      color: Colors.white,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 15.0),
          ],
        ),
        const SizedBox(height: 20.0),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 10.0),
          width: double.infinity,
          height: context.heightDevice * 0.3,
          child: LineChartOneLine(
            listData: [
              if (_findMaxCalories != 0)
                ..._caloriesChart.calories.mapIndexed(
                  (index, element) => FlSpot(index + 1,
                      element == 0 ? 1 : (element / _findMaxCalories) * 6),
                )
              else
                ...List.generate(7, (index) => FlSpot(index + 1, 1))
            ],
            callBack: (_, __) {},
            lineColor: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(height: 15.0),
        FitnessOverViewStatistic(
          heartRate: _caloriesChart.heartRate,
          calories: _overviewData?.calories ?? 0,
          toDo: _overviewData?.todoPercent ?? 0.0,
        ),
        HeaderTextCustom(
          headerText: 'What do you want to train',
          textStyle: context.titleMedium.copyWith(fontWeight: FontWeight.w600),
          isShowSeeMore: true,
          onPress: () async {
            await context.openListPageWithRoute(Routes.groupExercise);
          },
        ),
        const SizedBox(height: 10.0),
        if (_data.isLoadingBodyPart)
          Center(
            child: StyleLoadingWidget.foldingCube.renderWidget(
                size: 40.0, color: Theme.of(context).primaryColor),
          )
        else if (_data.exerciseCategories?.isNotEmpty ?? false)
          SizedBox(
            width: double.infinity,
            height: 180.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 15.0),
                ..._exerciseCategories!
                    .mapIndexed<Widget>(
                      (index, e) => BodyPartWidget(
                        header: e.header,
                        exCountable: e.exCountable,
                        description: e.description ?? "",
                        level: e.level,
                        image: ImageConst.listBanner[index % 3],
                      ),
                    )
                    .expand((e) => [e, const SizedBox(width: 15.0)])
              ],
            ),
          ),
        const SizedBox(height: 15.0),
        HeaderTextCustom(
          headerText: S.of(context).toDaySession,
          textStyle: context.titleMedium.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10.0),
        if (_data.isLoadingUpcomingWorkout)
          const Center(child: CircularProgressIndicator())
        else if (_data.upcomingSessions?.isEmpty ?? false)
          Center(child: Text('No upcoming workout', style: context.titleSmall))
        else
          ...List.generate(
            _data.upcomingSessions?.length ?? 0,
            (index) {
              return Column(
                children: [
                  UpComingSessionItem(
                    session: _data.upcomingSessions![index],
                    onPress: () async {
                      await context.openPageWithRouteAndParams(
                        Routes.exerciseOverview,
                        _data.upcomingSessions![index].id.toString(),
                      );
                      await _vm.getUpcomingSession();
                      await _vm.getCaloriesChart();
                    },
                  ),
                  const SizedBox(height: 10.0),
                ],
              );
            },
          ),
        const SizedBox(height: 40.0),
      ],
    );
  }
}
