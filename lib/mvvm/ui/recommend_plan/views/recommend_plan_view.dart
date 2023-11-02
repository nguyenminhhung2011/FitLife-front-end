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
          ExpansionPanelCustom<String, List<String>>(
            parentItems: const [
              ImageConst.banner1,
              ImageConst.banner2,
              ImageConst.banner3,
            ],
            parentItemBuilder: (_, image, isExpanded) {
              return Stack(
                children: [
                  Image.asset(image,
                      width: double.infinity, height: 160.0, fit: BoxFit.cover),
                ],
              );
            },
            expandPanelColor: Theme.of(context).scaffoldBackgroundColor,
            expandedHeaderPadding: const EdgeInsets.symmetric(vertical: 0.0),
            bodyItem: (_, items) => Column(
              children: [
                ...items.map(
                  (e) => Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(ImageConst.banner1,
                            width: 80.0, height: 80.0),
                      )
                    ],
                  ),
                )
              ],
            ),
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
