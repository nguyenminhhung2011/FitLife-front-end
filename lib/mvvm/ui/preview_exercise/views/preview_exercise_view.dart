import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/mvvm/object/entity/custom_exercise/custom_exercise.dart';
import 'package:fit_life/mvvm/object/entity/session/session.dart';
import 'package:fit_life/mvvm/ui/preview_exercise/views/widgets/perview_exercise_item.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PreviewExerciseView extends ConsumerStatefulWidget {
  final Session session;
  const PreviewExerciseView({required this.session, super.key});

  @override
  ConsumerState<PreviewExerciseView> createState() =>
      _PreviewExerciseViewState();
}

class _PreviewExerciseViewState extends ConsumerState<PreviewExerciseView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;
  
  Color get _primaryColor => Theme.of(context).primaryColor;

  final ValueNotifier<List<CustomExercise>> _exerciseItem = ValueNotifier(
    List.empty(growable: true),
  );

  void _onChangeItemPosition(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final oldItem = _exerciseItem.value[oldIndex];
    final newItem = _exerciseItem.value[newIndex];
    final newItems = _exerciseItem.value.mapIndexed((index, element) {
      if (index == oldIndex) return newItem;
      if (index == newIndex) return oldItem;
      return element;
    }).toList();
    _exerciseItem.value = newItems;
  }

  void _randomItem() {
    List<CustomExercise> items = _exerciseItem.value;
    items.shuffle();
    _exerciseItem.value = items;
  }

  @override
  void initState() {
    _exerciseItem.value = widget.session.customExercise ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      extendBody: true,
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ButtonCustom(
          height: 45.0,
          radius: 5.0,
          child: Text(
            "Start practice",
            style: context.titleMedium
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onPress: () => context.openPageWithRouteAndParams(
            Routes.wooTrackView,
            widget.session.copyWith(customExercise: _exerciseItem.value),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 15.0),
          Text(
            'Exercise per round',
            style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5.0),
          Text(
            'Round countable: ${widget.session.numberRound ?? 0}',
            style: context.titleSmall.copyWith(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).hintColor,
            ),
          ),
          const Divider(),
          if (widget.session.randomMix ?? false) ...[
            const SizedBox(height: 10.0),
            TextButton(
              onPressed: _randomItem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(CupertinoIcons.fullscreen_exit, color: _primaryColor),
                  const SizedBox(width: 5.0),
                  Text(
                    'Random exercise',
                    style: context.titleSmall.copyWith(
                        color: _primaryColor, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10.0),
          ],
          ValueListenableBuilder(
            valueListenable: _exerciseItem,
            builder: (__, items, _) {
              if (items.isNotEmpty) {
                return Expanded(
                  child: ReorderableListView(
                    onReorder: _onChangeItemPosition,
                    children: <Widget>[
                      ...(items.mapIndexed(
                        (index, e) => PreviewExerciseItem(
                            key: Key('$index'), customExercise: e),
                      )),
                      SizedBox(height: 100, key: Key('${items.length}'))
                    ],
                  ),
                );
              }
              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
