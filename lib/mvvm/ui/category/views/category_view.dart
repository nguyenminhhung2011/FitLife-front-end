import 'dart:developer';
import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';

import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/extensions/string_extensions.dart';
import 'package:fit_life/core/components/widgets/category/category_type.dart';
import 'package:fit_life/core/config/color_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/components/widgets/category_layout/category_layout.dart';
import '../../../../core/components/widgets/category_layout/category_layout_type.dart';

class ExerciseUI {
  final String id;
  final String image;
  final String headerText;
  final String subText;
  final String categoryId;
  final int calories;
  ExerciseUI({
    required this.id,
    required this.image,
    required this.subText,
    required this.categoryId,
    required this.calories,
    required this.headerText,
  });
}

class Category {
  final String id;
  final String title;
  final int indexIcon;
  final Color color;
  final String iconUrl;
  final CategoryType categoryType;
  Category({
    required this.id,
    required this.color,
    required this.iconUrl,
    required this.title,
    required this.indexIcon,
    required this.categoryType,
  });
}

Map<String, Category> categories = {
  '1': Category(
      id: '1',
      title: ' Relaxation',
      iconUrl: ImageConst.relaxIcon,
      color: CommonColor.relaxationColor.toColor(),
      indexIcon: 0,
      categoryType: CategoryType.expandCategory),
  '2': Category(
      id: '2',
      title: ' Meditation',
      iconUrl: ImageConst.meditationIcon,
      color: CommonColor.meditationColor.toColor(),
      indexIcon: 1,
      categoryType: CategoryType.expandCategory),
  '3': Category(
      id: '3',
      title: ' Beathing',
      iconUrl: ImageConst.beathingIcon,
      color: CommonColor.beathingColor.toColor(),
      indexIcon: 2,
      categoryType: CategoryType.expandCategory),
  '4': Category(
      id: '4',
      title: ' Yoga',
      iconUrl: ImageConst.yogaIcon,
      color: CommonColor.yogaColor.toColor(),
      indexIcon: 3,
      categoryType: CategoryType.expandCategory),
};

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView>
    with SingleTickerProviderStateMixin {
  List<CategoryLayoutModel> categoryTest = <CategoryLayoutModel>[
    ...categories.entries.mapIndexed(
      (index, e) => CategoryLayoutModel(
        id: e.key,
        title: e.value.title,
        widgetCategory:
            SvgPicture.asset(e.value.iconUrl, width: 20.0, height: 20.0),
      ),
    )
  ];

  Future<List<ExerciseUI>> paginationCall(
      int currentPage, String categoryId) async {
    log(categoryId);

    await Future.delayed(const Duration(seconds: 3));
    if (categoryId == '0') {
      return <ExerciseUI>[
        for (var i = 1; i <= 4; i++)
          for (var t = 0; t < 6; t++)
            ExerciseUI(
              id: 'ExerciseUI $t',
              categoryId: categoryId,
              image: ImageConst.banner1,
              subText: 'Relax and try hard',
              calories: 1000,
              headerText: 'Russian ExerciseUI',
            )
      ];
    }
    return <ExerciseUI>[
      for (int t = 0; t < 6; t++)
        ExerciseUI(
          id: 'ExerciseUI $t',
          categoryId: categoryId,
          image: ImageConst.banner1,
          subText: 'Relax and try hard',
          calories: 1000,
          headerText: 'Russian ExerciseUI',
        )
    ];
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).scaffoldBackgroundColor;
    return Scaffold(
      extendBody: true,
      backgroundColor: backgroundColor,
      appBar: _appBar(backgroundColor, context),
      body: Column(
        children: [
          const SizedBox(height: 10.0),
          _listExerciseUIField(context, backgroundColor),
        ],
      ),
    );
  }

  Expanded _listExerciseUIField(BuildContext context, Color backgroundColor) {
    return Expanded(
      child: CategoryLayoutView<ExerciseUI>(
        hPadding: 10,
        vPadding: 10,
        categoryLayoutType: CategoryLayoutType.both,
        selectedTextStyle: context.titleSmall.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 12.0,
        ),
        unselectedTextStyle: context.titleSmall.copyWith(
          color: Theme.of(context).hintColor,
          fontSize: 12.0,
        ),
        bothCategoryStyle: BothCategoryStyle(
          firstSiteColor: backgroundColor,
          secondSiteColor: backgroundColor,
          separated: Divider(
            color: Theme.of(context).hintColor,
            thickness: 0.2,
          ),
          hPaddingSecondSite: 5.0,
          selectedFormat: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.5),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
            ),
          ),
          categoryPadding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 12,
          ),
          categorySpacing: 10.0,
          firstExpand: 5,
          secondExpand: 15,
          headerCategoryView: (categoryModel) {
            return _headerCategoryStyle(context, categoryModel);
          },
        ),
        categoryLayoutModel: categoryTest,
        paginationDataCall: paginationCall,
        itemBuilder: (ExerciseUI data) {
          return Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            // color: Theme.of(context).primaryColor.withOpacity(0.2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(data.image,
                      width: 60.0, height: 60.0, fit: BoxFit.cover),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.headerText,
                        style: context.titleMedium.copyWith(
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis),
                      ),
                      ...[data.subText, '🔥 ${data.calories} calories burn']
                          .map(
                        (e) => Text(
                          e,
                          maxLines: 2,
                          style: context.titleSmall.copyWith(
                            fontSize: 11.0,
                            color: Theme.of(context).hintColor,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCategoryBuilder: (data) => const SizedBox(),
      ),
    );
  }

  AppBar _appBar(Color backgroundColor, BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      toolbarHeight: 80.0,
      leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back, color: context.titleLarge.color)),
      title: Text(
        "Categories",
        style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz, color: context.titleLarge.color),
        )
      ],
    );
  }

  Widget _headerCategoryStyle(
      BuildContext context, CategoryLayoutModel categoryModel) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.2),
            blurRadius: 5.0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              if (categoryModel.widgetCategory != null) ...<Widget>[
                categoryModel.widgetCategory!,
                const SizedBox(width: 5.0),
              ],
              Expanded(
                child: Text(
                  categoryModel.title,
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "💪 200 exerciseUIs",
              style: context.titleSmall.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 12.0,
                color: Theme.of(context).hintColor,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'View all',
              style: context.titleSmall.copyWith(
                fontSize: 12.0,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]
            .expandIndexed((index, element) => [
                  element,
                  const SizedBox(height: 5.0),
                  if (index == 3 && categoryModel.id == '0') ...<Widget>[
                    const Divider(),
                    const SizedBox(),
                  ],
                ])
            .toList()
          ..removeLast(),
      ),
    );
  }
}
