import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/expansion_panel_list/expansion_panel_list.dart';
import 'package:fit_life/core/components/widgets/header_custom.dart';
import 'package:fit_life/mvvm/ui/recommend_plan/views/widgets/exercise_child_item.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';

class GroupExerciseView extends StatefulWidget {
  const GroupExerciseView({super.key});

  @override
  State<GroupExerciseView> createState() => _GroupExerciseViewState();
}

class _GroupExerciseViewState extends State<GroupExerciseView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  @override
  Widget build(BuildContext context) {
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
          ExpansionPanelCustom<Map<String, dynamic>, List<String>>(
            parentItems: const [
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
            ],
            parentItemBuilder: (_, item, isExpanded) {
              return Stack(
                children: [
                  Image.asset(item["image"].toString(),
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
                          item['header'].toString(),
                          style: context.titleMedium.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        ...[
                          item['description'].toString(),
                          '💪 ${item['exCountable']} workout programs',
                        ].map((e) => Text(
                              e,
                              style: context.titleSmall.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                        Text(
                          item['level'],
                          style: context.titleSmall.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ].expand((e) => [e, const SizedBox(height: 5.0)]).toList()
                        ..removeLast(),
                    ),
                  ),
                ],
              );
            },
            expandPanelColor: Theme.of(context).scaffoldBackgroundColor,
            bodyItem: (_, items, header) => Column(children: [
              const SizedBox(height: 10.0),
              HeaderTextCustom(
                headerText: "🌟 ${header["header"]}",
                textStyle:
                    context.titleMedium.copyWith(fontWeight: FontWeight.w600),
                isShowSeeMore: true,
                onPress: () =>
                    context.openListPageWithRoute(Routes.allExercise),
              ),
              ...items
                  .map((e) => const ExerciseChidItem())
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
            loadBody: (index) async {
              await Future.delayed(const Duration(seconds: 3));
              return [1, 2, 3, 4, 5].map((e) => e.toString()).toList();
            },
          ),
        ],
      ),
    );
  }
}
