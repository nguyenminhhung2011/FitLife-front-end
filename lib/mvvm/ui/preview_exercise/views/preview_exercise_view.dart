import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';

import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/appbar.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/mvvm/ui/preview_exercise/views/perview_exercise_item.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PreviewExerciseView extends ConsumerStatefulWidget {
  const PreviewExerciseView({super.key});

  @override
  ConsumerState<PreviewExerciseView> createState() =>
      _PreviewExerciseViewState();
}

class _PreviewExerciseViewState extends ConsumerState<PreviewExerciseView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  Color get _primaryColor => Theme.of(context).primaryColor;

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
          onPress: () => context.openListPageWithRoute(Routes.wooTrackView),
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
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            ),
            title: const <Widget>[],
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz, color: Colors.white),
              )
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
                Text(
                  'Exercise per round',
                  style:
                      context.titleLarge.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5.0),
                Text(
                  'Round countable: 5',
                  style: context.titleSmall.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).hintColor,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Divider(),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(CupertinoIcons.fullscreen_exit,
                          color: _primaryColor),
                      const SizedBox(width: 5.0),
                      Text(
                        'Random exercise',
                        style: context.titleSmall.copyWith(
                            color: _primaryColor, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                ...[
                  const PreviewExerciseItem(),
                  const PreviewExerciseItem(),
                  const PreviewExerciseItem(),
                  const PreviewExerciseItem(),
                ].expand((element) => [element, const SizedBox(height: 10.0)])
              ]
                  .expand(
                      (e) => [Align(alignment: Alignment.topCenter, child: e)])
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
