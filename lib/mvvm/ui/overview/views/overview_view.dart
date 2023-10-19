import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/category/category_custom.dart';
import 'package:fit_life/core/components/widgets/category/category_type.dart';
import 'package:fit_life/core/components/widgets/dot_custom.dart';
import 'package:fit_life/core/components/widgets/fit_life/up_coming_schedule_ex_item.dart';
import 'package:fit_life/core/components/widgets/header_custom.dart';
import 'package:fit_life/core/components/widgets/swiper_custom.dart';
import 'package:fit_life/mvvm/ui/overview/views/widgets/banner_item_builder.dart';
import 'package:fit_life/mvvm/ui/overview/views/widgets/feeling_field.dart';
import 'package:fit_life/mvvm/ui/overview/views/widgets/paper_field.dart';
import 'package:fit_life/mvvm/ui/overview/views/widgets/render_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class OverviewView extends ConsumerStatefulWidget {
  const OverviewView({super.key});

  @override
  ConsumerState<OverviewView> createState() => _OverviewViewState();
}

class _OverviewViewState extends ConsumerState<OverviewView> {
  Color get _backGroundColor => Theme.of(context).scaffoldBackgroundColor;

  Color get _primaryColor => Theme.of(context).primaryColor;

  TextStyle get _headerStyle =>
      context.titleMedium.copyWith(fontWeight: FontWeight.w600);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _backGroundColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 70.0,
        title: const RenderOverviewAppBar(),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 15.0),
              DotCustom(color: _primaryColor, full: true, radius: 7.0),
              const SizedBox(width: 5.0),
              Text('How are you feeling today?', style: context.titleSmall),
            ],
          ),
          FeelingField(primaryColor: _primaryColor),
          HeaderTextCustom(
            headerText: 'Feature',
            textStyle: _headerStyle,
            isShowSeeMore: true,
          ),
          SwipeCustom(
            itemCount: 3,
            height: 200,
            isShowSlideDot: false,
            autoPlay: false,
            itemBuilder: (index) {
              final banner = Constant.listContent.elementAt(index);
              return BannerItemBuilder(banner: banner, onPress: () {});
            },
            swipeLayout: SwiperLayout.DEFAULT,
          ),
          const SizedBox(),
          HeaderTextCustom(
            headerText: 'Exercise',
            textStyle: _headerStyle,
            isShowSeeMore: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: CategoryField(
              categoryType: CategoryType.expandCategory, // => Change here
              selectedColor: Theme.of(context).primaryColor,
              numberColumn: 2,
              spacingItem: 15.0,
              categoryGridFormat: const CategoryGridFormat(
                  crossSpacing: 10.0, mainSpacing: 10.0),
              categoryTextStyle: context.titleSmall.copyWith(
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis,
              ),
              categories: <CategoryStyle>[
                ...Constant.listCategory.mapIndexed(
                  (index, e) => CategoryStyle(
                    text: e.title,
                    typeImage: TypeImage.assetSvg,
                    iconUrl: e.iconUrl,
                    color: e.color,
                    iconSize: e.iconSize,
                    isIcon: e.isIconData,
                    padding: const EdgeInsets.all(15.0),
                    onPress: () {},
                  ),
                )
              ],
            ),
          ),
          const SizedBox(),
          HeaderTextCustom(
            headerText: 'Schedule exercises',
            textStyle: _headerStyle,
            isShowSeeMore: true,
          ),
          const UpComingScheduleExItem(),
          const SizedBox(),
          HeaderTextCustom(
            headerText: 'Health paper',
            textStyle: _headerStyle,
            isShowSeeMore: true,
          ),
          const PaperSliderView(),
          const SizedBox(height: 40.0),
        ].expand((e) => [e, const SizedBox(height: 5.0)]).toList(),
      ),
    );
  }
}
