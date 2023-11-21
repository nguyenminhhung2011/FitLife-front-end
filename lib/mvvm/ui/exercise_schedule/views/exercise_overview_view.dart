import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/core/components/widgets/fit_life/equipment_horizontal_item.dart';
import 'package:fit_life/core/components/widgets/fit_life/exercise_vertial_item.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fit_life/core/components/widgets/appbar.dart';
import 'package:readmore/readmore.dart';

class ExerciseOverviewView extends ConsumerStatefulWidget {
  const ExerciseOverviewView({super.key});

  @override
  ConsumerState<ExerciseOverviewView> createState() =>
      _ExerciseOverviewViewState();
}

class _ExerciseOverviewViewState extends ConsumerState<ExerciseOverviewView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  Color get _primaryColor => Theme.of(context).primaryColor;

  EdgeInsets get _padding => const EdgeInsets.symmetric(horizontal: 15.0);

  TextStyle get _smallStyle =>
      context.titleSmall.copyWith(color: Theme.of(context).hintColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomSheet: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ButtonCustom(
          height: 45.0,
          radius: 5.0,
          onPress: () => context.openListPageWithRoute(Routes.previewExercise),
          child: Text(
            'Start practice',
            style: context.titleMedium
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: <Widget>[
          AppBarCustom(
            pinned: true,
            backgroundColor: Colors.grey.withOpacity(0.4),
            widgetExpanded: Image.asset(
              ImageConst.banner1,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            expandedHeight: context.heightDevice * 0.25,
            title: <Widget>[
              IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.arrow_back),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                const SizedBox(height: 10.0),
                const DividerDot(),
                const SizedBox(height: 15.0),
                Padding(
                  padding: _padding,
                  child: Text(
                    'Sessions 1',
                    style: context.titleLarge
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 22.0),
                  ),
                ),
                const SizedBox(height: 10.0),
                _sessionSadistic(context),
                const SizedBox(height: 15.0),
                Padding(
                  padding: _padding,
                  child: Text(
                    'Description',
                    style: context.titleMedium
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: _padding,
                  child: ReadMoreText(
                    'one\'s ability to execute daily activities with optimal performance, endurance, and strength with the management of disease, fatigue, and stress and reduced sedentary behavio, fatigue, and stress and reduced sedentary behavio, fatigue, and stress and reduced sedentary behavio',
                    trimLines: 2,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Show less',
                    lessStyle: _smallStyle.copyWith(color: _primaryColor),
                    moreStyle: _smallStyle.copyWith(color: _primaryColor),
                    style: _smallStyle.copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(height: 15.0),
                _headerRowWidget(header: 'Equipments', trailing: '4 equips'),
                const SizedBox(height: 10.0),
                SizedBox(
                  width: double.infinity,
                  height: context.heightDevice * 0.15,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_, index) => const EquipmentHorizontalItem(),
                  ),
                ),
                const SizedBox(height: 15.0),
                _headerRowWidget(header: 'Exercises', trailing: '5 exs'),
                const SizedBox(height: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    ExerciseVerticalItem(),
                    ExerciseVerticalItem(),
                    ExerciseVerticalItem(),
                  ].expand((e) => [e, const SizedBox(height: 10.0)]).toList(),
                ),
                const SizedBox(height: 70.0),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _headerRowWidget({required String header, required String trailing}) {
    return Padding(
      padding: _padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            header,
            style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(trailing, style: _smallStyle),
        ],
      ),
    );
  }

  Padding _sessionSadistic(BuildContext context) {
    return Padding(
      padding: _padding,
      child: Text.rich(
        TextSpan(
          style: context.titleSmall.copyWith(fontWeight: FontWeight.w600),
          children: [
            ...['🕑', ' 55 minutes | ', '🔥 ', '297 calo'].mapIndexed(
              (index, element) => TextSpan(
                text: element,
                style: TextStyle(
                    color: index % 2 == 0 ? null : Theme.of(context).hintColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
