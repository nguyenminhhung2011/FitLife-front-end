import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/expansion_panel_list/expansion_panel_list.dart';
import 'package:flutter/material.dart';

class RecommendPlanView extends StatefulWidget {
  const RecommendPlanView({super.key});

  @override
  State<RecommendPlanView> createState() => _RecommendPlanViewState();
}

class _RecommendPlanViewState extends State<RecommendPlanView> {
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
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "🌟 ${header["header"]}",
                      style: context.titleMedium
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See more",
                        style: context.titleSmall.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ...items
                  .map(
                    (e) => _exerciseChildItem(context),
                  )
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

  Padding _exerciseChildItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(ImageConst.banner1,
                width: 100.0, height: 100.0, fit: BoxFit.cover),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Russian workout",
                  style:
                      context.titleSmall.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "This is description of russian exercise",
                  style: context.titleSmall.copyWith(
                    color: Theme.of(context).hintColor,
                    fontSize: 12.0,
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  children: ['30 mins', '7 exercises']
                      .map(
                        (e) => Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                              border: Border.all(
                                  width: 1,
                                  color: Theme.of(context).primaryColor),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Text(
                            e,
                            style: context.titleSmall.copyWith(
                                fontSize: 10.0,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ].expand((e) => [e, const SizedBox(height: 5.0)]).toList()
                ..removeLast(),
            ),
          )
        ],
      ),
    );
  }
}
