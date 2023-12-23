import 'package:easy_debounce/easy_debounce.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/pagination_view/default_pagination.dart';
import 'package:fit_life/mvvm/me/entity/news_health/news_health.dart';
import 'package:fit_life/mvvm/ui/auth/mixins/auth_mixin.dart';
import 'package:fit_life/mvvm/ui/list_news/view_model/list_news_data.dart';
import 'package:fit_life/mvvm/ui/list_news/view_model/list_news_view_model.dart';
import 'package:fit_life/mvvm/ui/list_news/views/widget/news_health_vertical_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class ListNewsView extends ConsumerStatefulWidget {
  const ListNewsView({super.key});

  @override
  ConsumerState<ListNewsView> createState() => _ListNewsViewState();
}

class _ListNewsViewState extends ConsumerState<ListNewsView> with AuthMixin {
  ListNewsViewModel get _vm => ref.read(listNewsStateNotifier.notifier);

  ListNewsData get _data => ref.watch(listNewsStateNotifier).data;

  ListNewsState get _state => ref.watch(listNewsStateNotifier);

  List<NewsHealth> get _items => _data.newsHealth.items;

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await _vm.searchNewsHealth(content: "");
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => context.pop(),
            icon: Icon(Icons.arrow_back, color: context.titleLarge.color)),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "All news health",
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: _searchBox(),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: DefaultPagination(
              items: _items,
              loading: _state.loading,
              itemBuilder: (_, index) {
                final item = _items[index];
                return NewsHealthVerticalItem(item: item);
              },
              listenScrollBottom: () =>
                  _vm.searchNewsHealth(content: _searchController.text),
            ),
          )
        ],
      ),
    );
  }

  Widget _searchBox() {
    return TextField(
      controller: _searchController,
      decoration: textFieldDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                ImageConst.searchIcon,
                width: 22,
                height: 22,
                // ignore: deprecated_member_use
                color: context.titleLarge.color,
              ),
            ],
          ),
        ),
        labelText: 'Search',
        errorText: null,
      ).copyWith(
        hintText: "Type search ....",
        hintStyle:
            context.titleSmall.copyWith(color: Theme.of(context).hintColor),
      ), // InputDecoration(
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      style: context.titleSmall,
      onChanged: (text) {
        EasyDebounce.debounce(
          'search',
          const Duration(milliseconds: 500),
          () => _vm.searchNewsHealth(content: text),
        );
      },
      textInputAction: TextInputAction.next,
      onSubmitted: (_) {},
    );
  }
}
