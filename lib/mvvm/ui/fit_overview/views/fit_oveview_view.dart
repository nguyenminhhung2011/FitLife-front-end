import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/app_coordinator.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/handle_time.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/image_const.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/button_custom.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/fit_life/exercise_category.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/fit_life/line_chart.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/fit_life/upcoming_workout_item.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/header_custom.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/range_date_picker_custom.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/fit_overview/views/widgets/fit_ness_over_view_statistic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class FitOverViewView extends ConsumerStatefulWidget {
  const FitOverViewView({super.key});

  @override
  ConsumerState<FitOverViewView> createState() => _FitOverViewViewState();
}

class _FitOverViewViewState extends ConsumerState<FitOverViewView> {
  FitOverViewViewModel get _vm =>
      ref.read<FitOverViewViewModel>(fitOverViewNotifier.notifier);

  List<DateTime> get _rangeDate =>
      ref.watch(fitOverViewNotifier).data.rangeDate;

  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  final RangeDateController _rangeDateController = RangeDateController();

  List<FlSpot> listFlSpotCaloriesBurned = <FlSpot>[
    const FlSpot(1, 1),
    const FlSpot(2, 2.0),
    const FlSpot(3, 4.2),
    const FlSpot(4, 2.4),
    const FlSpot(5, 4.5),
    const FlSpot(6, 3.9),
    const FlSpot(7, 6.0),
  ];

  @override
  void initState() {
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

  @override
  Widget build(BuildContext context) {
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
      body: ListView(
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
              listData: listFlSpotCaloriesBurned,
              callBack: (_, __) {},
              lineColor: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(height: 15.0),
          const FitnessOverViewStatistic(),
          HeaderTextCustom(
            headerText: 'What do you want to train',
            textStyle:
                context.titleMedium.copyWith(fontWeight: FontWeight.w600),
            isShowSeeMore: true,
          ),
          SizedBox(
            width: double.infinity,
            height: 180.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 15.0),

                ///[Example code]
                ...[
                  {
                    'header': 'Upper Body',
                    'description': 'This is description of upper body',
                    'exCountable': 21,
                    'level': 'Beginner ⚡ Advanced',
                    'image': ImageConst.banner1,
                  },
                  {
                    'header': 'Cardio',
                    'description': 'This is description of Cardio',
                    'exCountable': 31,
                    'level': 'Medium ⚡ Advanced',
                    'image': ImageConst.banner2,
                  },
                  {
                    'header': 'Stretch',
                    'description': 'This is description of Stretch',
                    'exCountable': 19,
                    'level': 'Beginner ⚡ Advanced',
                    'image': ImageConst.banner3,
                  },
                ]
                    .map<Widget>(
                      (e) => ExerciseCategory(
                        header: e['header'].toString(),
                        description: e['description'].toString(),
                        exCountable: e['exCountable'] as int,
                        level: e['level'].toString(),
                        image: e['image'].toString(),
                      ),
                    )
                    .expand((e) => [e, const SizedBox(width: 15.0)])
              ],
            ),
          ),
          HeaderTextCustom(
            headerText: 'Upcoming workout',
            textStyle:
                context.titleMedium.copyWith(fontWeight: FontWeight.w600),
            isShowSeeMore: true,
          ),
          const UpComingWorkoutItem(),
          const SizedBox(height: 10.0),
          const UpComingWorkoutItem(),
          const SizedBox(height: 100.0),
        ],
      ),
    );
  }
}
