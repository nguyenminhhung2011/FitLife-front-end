import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/fit_life/equipment_horizontal_item.dart';
import 'package:fit_life/core/components/widgets/loading_page.dart';
import 'package:fit_life/core/components/widgets/video_player.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/model/exercise/instruction_model.dart';
import 'package:fit_life/mvvm/ui/execise_detail/view_model/exercise_detail_data.dart';
import 'package:fit_life/mvvm/ui/execise_detail/view_model/exercise_detail_view_model.dart';
import 'package:fit_life/mvvm/ui/execise_detail/views/widgets/favorite_icon_button.dart';
import 'package:fit_life/mvvm/ui/execise_detail/views/widgets/step_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readmore/readmore.dart';

class ExerciseDetailView extends ConsumerStatefulWidget {
  const ExerciseDetailView({super.key});

  @override
  ConsumerState<ExerciseDetailView> createState() => _ExerciseDetailViewState();
}

class _ExerciseDetailViewState extends ConsumerState<ExerciseDetailView> {
  ExerciseDetailViewModel get _vm =>
      ref.read(exerciseDetailStateNotifier.notifier);

  ExerciseDetailData get _data => ref.watch(exerciseDetailStateNotifier).data;

  ExerciseDetailState get _state => ref.watch(exerciseDetailStateNotifier);

  Exercise? get _exercise => _data.exercise;

  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  Color get _primaryColor => Theme.of(context).primaryColor;

  EdgeInsets get _itemPadding => const EdgeInsets.symmetric(horizontal: 15.0);

  TextStyle get _smallStyle => context.titleSmall
      .copyWith(fontSize: 12.0, color: Theme.of(context).hintColor);

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await _vm.getExerciseById();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Stack(
        children: [
          if (_data.exercise != null) _body(context) else const SizedBox(),
          if (_state.loading)
            Container(
              color: Colors.black45,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: StyleLoadingWidget.foldingCube.renderWidget(
                    size: 40.0, color: Theme.of(context).primaryColor),
              ),
            )
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back, color: context.titleLarge.color),
        ),
        actions: [FavoriteIconButton(data: _data.exercise!)],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ButtonCustom(
          onPress: () {},
          height: 45.0,
          radius: 5.0,
          child: Text(
            'Save',
            style: context.titleMedium
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(2.0),
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor.withOpacity(0.1),
                  blurRadius: 5.0,
                )
              ],
              color: Theme.of(context).cardColor,
            ),
            width: double.infinity,
            height: context.heightDevice * 0.25,
            child: const VideoPlayerUI(
              url:
                  "https://github.com/minhunsocute/Data-GHealth/blob/main/workout_image/Dragon%20Flag%20Sit-Up.mp4?raw=true",
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: _itemPadding,
            child: Text(
              _exercise?.name ?? "",
              style: context.titleSmall.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).hintColor),
            ),
          ),
          _headerText(content: 'Barbell Bench Press'),
          const SizedBox(height: 5.0),
          Padding(
            padding: _itemPadding,
            child: Text(
                'Easy | ${_exercise?.caloriesPerMinute ?? 0} calories burn',
                style: _smallStyle),
          ),
          const SizedBox(height: 10.0),
          _headerText(content: 'Equipment'),
          if (_exercise?.equipment?.isNotEmpty ?? false) ...[
            const SizedBox(height: 10.0),
            EquipmentHorizontalItem(
                equipment: _exercise!.equipment!, isFillWidth: true),
          ],
          const SizedBox(height: 15.0),
          _headerText(content: 'Description'),
          Padding(
            padding: _itemPadding,
            child: ReadMoreText(
              "this is description of exercise yeah yeah ${_exercise?.description} of ${_exercise?.name}",
              trimLines: 2,
              trimCollapsedText: ' Show more',
              trimExpandedText: ' Show less',
              lessStyle: _smallStyle.copyWith(color: _primaryColor),
              moreStyle: _smallStyle.copyWith(color: _primaryColor),
              style: _smallStyle.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: _itemPadding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'How to do it?',
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Text('${_exercise?.instructions?.length ?? 0} steps',
                    style: _smallStyle)
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: _itemPadding,
            child: _stepField(steps: _exercise?.instructions ?? List.empty()),
          ),
          const SizedBox(height: 15.0),
          _headerText(content: 'Custom Repetitions'),
          const SizedBox(height: 10.0),
          _repetitionsField(context),
          const SizedBox(height: 50.0),
        ],
        // .expand((e) => [e, const SizedBox(height: 5.0)]).toList(),
      ),
    );
  }

  SizedBox _repetitionsField(BuildContext context) {
    return SizedBox(
      height: context.heightDevice * 0.2,
      child: CupertinoPicker(
        looping: true,
        diameterRatio: 1,
        itemExtent: 64,
        onSelectedItemChanged: (int value) {},
        selectionOverlay: Container(
          decoration: BoxDecoration(
            border: Border.symmetric(
              horizontal:
                  BorderSide(width: 0.6, color: Theme.of(context).dividerColor),
            ),
          ),
        ),
        children: [
          ...[
            {'c': 360, 't': 45},
            {'c': 370, 't': 46},
            {'c': 380, 't': 47},
            {'c': 390, 't': 48},
            {'c': 400, 't': 49},
          ].map(
            (e) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    style: context.titleMedium,
                    children: [
                      TextSpan(text: '🔥 ${e['c']} Calories Burn  '),
                      TextSpan(
                        text: e['t'].toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      const TextSpan(text: '  times'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _headerText({required String content}) {
    return Padding(
      padding: _itemPadding,
      child: Text(
        content,
        style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _stepField({required List<Instruction> steps}) {
    final length = steps.length;
    return Column(
      children: [
        ...steps.mapIndexed((index, element) {
          return StepItemWidget(
            header: "${_exercise?.name} step ${index + 1}",
            content: element.instruction,
            step: index + 1,
            isShowIndication: index < (length - 1),
          );
        })
      ],
    );
  }
}
