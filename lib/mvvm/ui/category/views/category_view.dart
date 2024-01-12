import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/extensions/string_extensions.dart';
import 'package:fit_life/core/components/widgets/image_custom.dart';
import 'package:fit_life/core/components/widgets/loading_page.dart';
import 'package:fit_life/mvvm/object/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/object/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/ui/category/view_model/category_data.dart';
import 'package:fit_life/mvvm/ui/category/view_model/category_view_model.dart';
import 'package:fit_life/mvvm/ui/category/views/widgets/category_exercise_item_view.dart';
import 'package:fit_life/mvvm/ui/category/views/widgets/header_category_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

class CategoryView extends ConsumerStatefulWidget {
  const CategoryView({super.key});

  @override
  ConsumerState<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends ConsumerState<CategoryView>
    with SingleTickerProviderStateMixin {
  CategoryViewModel get _vm => ref.read(categoryStateNotifier.notifier);

  CategoryState get _state => ref.watch(categoryStateNotifier);

  CategoryData get _data => _state.data;

  List<BodyPart>? get _categories => _data.categories;

  Future<List<Exercise>> paginationCall(
          int currentPage, String bodyPart) async =>
      await _vm.getExerciseByCategory(bodyPart: bodyPart, pageGet: currentPage);

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await _vm.getCategories();
    });
    super.initState();
  }

  void _listenStateChange(CategoryState state) {
    state.maybeWhen(
      getCategorySuccess: (_) {},
      getCategoryFailed: (_, error) =>
          context.showSnackBar("🐛[Get category] $error"),
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(categoryStateNotifier, (_, next) => _listenStateChange(next));
    final backgroundColor = Theme.of(context).scaffoldBackgroundColor;
    return Stack(
      children: [
        if (_categories?.isNotEmpty ?? false) _body(backgroundColor, context),
        if (_state.loading)
          Container(
            color: Colors.black45,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: _loadingFunction(),
          )
      ],
    );
  }

  Center _loadingFunction() {
    return Center(
      child: StyleLoadingWidget.foldingCube
          .renderWidget(size: 40.0, color: Theme.of(context).primaryColor),
    );
  }

  Widget _body(Color backgroundColor, BuildContext context) {
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

  Widget _listExerciseUIField(BuildContext context, Color backgroundColor) {
    return Expanded(
      child: CategoryLayoutView<Exercise>(
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
          categoryPadding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
          categorySpacing: 10.0,
          firstExpand: 5,
          secondExpand: 15,
          headerCategoryView: (categoryModel) {
            return HeaderCategoryView(
                context: context, categoryModel: categoryModel);
          },
        ),
        categoryLayoutModel: _categories!.map((e) {
          final imageUrl =
              Constant.renderBodyPartImage[e.header.toLowerCase()].toString();
          final widget = ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: ImageCustom(
              imageUrl: imageUrl,
              width: 20.0,
              height: 20.0,
              isNetworkImage: true,
            ),
          );
          return CategoryLayoutModel(
            id: e.header.toLowerCase(),
            title: " ${e.header.upCaseFirstCharacter}",
            imageUrl: imageUrl,
            widgetCategory: widget,
          );
        }).toList(),
        paginationDataCall: paginationCall,
        itemBuilder: (Exercise data) {
          return CategoryExerciseItemView(data: data, context: context);
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
}
