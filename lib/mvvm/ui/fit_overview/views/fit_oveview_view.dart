import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/image_const.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/fit_life/line_chart.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart';
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

  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

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

  @override
  void dispose() {
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
          const SizedBox(height: 40),
          Row(
            children: [],
          ),
          const SizedBox(height: 10.0),
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
        ],
      ),
    );
  }
}

class FitnessOverViewStatistic extends StatelessWidget {
  const FitnessOverViewStatistic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).primaryColor.withOpacity(0.2),
      ),
      child: Row(
        children: [
          ...[81, 32.5, 100]
              .mapIndexed(
                (index, e) => Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          _renderIcon(index, context),
                          const SizedBox(width: 5.0),
                          _renderHeader(index, context)
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                            text: e.toString(),
                            style: context.titleLarge
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          _renderStatistic(index, context)
                        ],
                      ))
                    ],
                  ),
                ),
              )
              .expand(
                (e) => [
                  e,
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.5),
                    child: SizedBox(height: 60.0, child: VerticalDivider()),
                  )
                ],
              )
              .toList()
            ..removeLast()
        ],
      ),
    );
  }

  SvgPicture _renderIcon(int index, BuildContext context) {
    return SvgPicture.asset(
      switch (index) {
        0 => ImageConst.heartIcon,
        1 => ImageConst.listIcon,
        _ => ImageConst.caloriesIcon,
      },
      height: 18.0,
      width: 18.0,
      // ignore: deprecated_member_use
      color: Theme.of(context).primaryColor,
    );
  }

  TextSpan _renderStatistic(int index, BuildContext context) {
    return TextSpan(
        text: switch (index) { 0 => ' BPM', 1 => ' %', _ => ' Calo' },
        style: context.titleMedium);
  }

  Expanded _renderHeader(int index, BuildContext context) {
    return Expanded(
        child: Text(
      switch (index) { 0 => 'Heart Rate', 1 => 'To-do', _ => 'Calories' },
      overflow: TextOverflow.ellipsis,
      style: context.titleSmall,
    ));
  }
}
