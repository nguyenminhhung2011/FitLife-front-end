import 'package:collection/collection.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/category_layout/category_layout.dart';
import 'package:fit_life/core/components/widgets/image_custom.dart';
import 'package:flutter/material.dart';

class HeaderCategoryView extends StatelessWidget {
  const HeaderCategoryView({
    super.key,
    required this.context,
    required this.categoryModel,
  });

  final BuildContext context;
  final CategoryLayoutModel categoryModel;

  @override
  Widget build(BuildContext context) {
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
              ...<Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: ImageCustom(
                    width: 60.0,
                    height: 60.0,
                    imageUrl: categoryModel.imageUrl,
                    isNetworkImage: true,
                  ),
                ),
                const SizedBox(width: 5.0),
              ],
              Expanded(
                child: Text(
                  categoryModel.title,
                  style:
                      context.titleLarge.copyWith(fontWeight: FontWeight.bold),
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
