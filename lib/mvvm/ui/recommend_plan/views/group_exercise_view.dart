import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/expansion_panel_list/expansion_panel_list.dart';
import 'package:fit_life/core/components/widgets/header_custom.dart';
import 'package:fit_life/core/components/widgets/loading_page.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/ui/recommend_plan/view_model/group_exercise_data.dart';
import 'package:fit_life/mvvm/ui/recommend_plan/view_model/group_exercise_view_model.dart';
import 'package:fit_life/core/components/widgets/fit_life/exercise_child_item.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroupExerciseView extends ConsumerStatefulWidget {
  const GroupExerciseView({super.key});

  @override
  ConsumerState<GroupExerciseView> createState() => _GroupExerciseViewState();
}

class _GroupExerciseViewState extends ConsumerState<GroupExerciseView> {
  GroupExerciseViewModel get _vm =>
      ref.read(groupExerciseStateNotifier.notifier);

  GroupExerciseData get _data => ref.watch(groupExerciseStateNotifier).data;

  bool get _loading =>
      ref.watch(groupExerciseStateNotifier).loadingGetExerciseCategories;

  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      _vm.getExerciseCategories();
    });
    super.initState();
  }

  void _listenStateChange(GroupExerciseState state) {
    state.maybeWhen(
      getExerciseCategoriesFailed: (_, err) =>
          context.showSnackBar("🐛[Get exercise categories] $err"),
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
        groupExerciseStateNotifier, (_, next) => _listenStateChange(next));

    return Stack(
      children: [_body(context), if (_loading) _loadingField(context)],
    );
  }

  Container _loadingField(BuildContext context) {
    return Container(
      color: Colors.black45,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: StyleLoadingWidget.foldingCube
            .renderWidget(size: 40.0, color: Theme.of(context).primaryColor),
      ),
    );
  }

  Scaffold _body(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back, color: context.titleLarge.color),
        ),
        elevation: 0,
        title: Text(
          "Group exercise",
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: context.titleLarge.color),
          )
        ],
      ),
      body: ListView(
        children: [
          if (_data.exercises.isNotEmpty)
            ExpansionPanelCustom<ExerciseCategory, List<Exercise>>(
              parentItems: _data.exercises,
              parentItemBuilder: (_, item, isExpanded) {
                return _exerciseCategoryItem(item, context);
              },
              expandPanelColor: Theme.of(context).scaffoldBackgroundColor,
              bodyItem: (_, items, header) => Column(children: [
                const SizedBox(height: 10.0),
                HeaderTextCustom(
                  headerText: "🌟 ${header.header}",
                  textStyle:
                      context.titleMedium.copyWith(fontWeight: FontWeight.w600),
                  isShowSeeMore: true,
                  onPress: () => context.openPageWithRouteAndParams(
                    Routes.allExercise,
                    header.header,
                  ),
                ),
                ...items
                    .map((e) => ExerciseChidItem(exercise: e))
                    .expand((e) => [
                          e,
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Divider(),
                          )
                        ])
                    .toList()
                  ..removeLast(),
              ]),
              loadBody: (index) async => await _vm.getExerciseByCategory(
                perPage: index + 1,
                category: _data.exercises[index].header,
              ),
            ),
          const SizedBox(height: 40.0),
        ],
      ),
    );
  }

  Stack _exerciseCategoryItem(ExerciseCategory item, BuildContext context) {
    return Stack(
      children: [
        Image.asset(item.image.toString(),
            width: double.infinity, height: 160.0, fit: BoxFit.cover),
        Container(
          width: double.infinity,
          height: 160.0,
          padding: const EdgeInsets.all(15.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black38, Colors.black45],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.header,
                style: context.titleMedium
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              ...[
                item.description,
                '💪 ${item.exCountable} workout programs',
              ].map((e) => Text(
                    e ?? "",
                    style: context.titleSmall.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              Text(
                item.level,
                style: context.titleSmall
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              )
            ].expand((e) => [e, const SizedBox(height: 5.0)]).toList()
              ..removeLast(),
          ),
        ),
      ],
    );
  }
}
