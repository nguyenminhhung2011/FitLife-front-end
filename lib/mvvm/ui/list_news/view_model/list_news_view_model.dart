import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/object/entity/news_health/news_health.dart';
import 'package:fit_life/mvvm/object/entity/pagination/pagination.dart';
import 'package:fit_life/mvvm/object/entity/request/search_news_request.dart';
import 'package:fit_life/mvvm/object/model/page_request/page_request.dart';
import 'package:fit_life/mvvm/repositories/news_repositories.dart';
import 'package:fit_life/mvvm/ui/list_news/view_model/list_news_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'list_news_state.dart';
part 'list_news_view_model.freezed.dart';

final listNewsStateNotifier =
    AutoDisposeStateNotifierProvider<ListNewsViewModel, ListNewsState>(
        (ref) => injector.get<ListNewsViewModel>());

@injectable
class ListNewsViewModel extends StateNotifier<ListNewsState> {
  final _newsRepositories = injector.get<NewsRepositories>();
  ListNewsViewModel()
      : super(
          const _Initial(
              data:
                  ListNewsData(newsHealth: Pagination<NewsHealth>(items: []))),
        );

  ListNewsData get data => state.data;

  Future<void> searchNewsHealth(
      {required String content, bool? newSearch}) async {
    final isNewSearch = data.searchContent != content || (newSearch ?? false);
    if (state is _Loading && isNewSearch) return;
    final currentPage = isNewSearch ? 0 : data.newsHealth.currentPage;

    state = _Loading(
      data: data.copyWith(
        newsHealth: isNewSearch
            ? data.newsHealth.copyWith(items: [], currentPage: currentPage)
            : data.newsHealth,
      ),
    );

    final response = await _newsRepositories.searchNews(SearchNewsRequest(
        content: content,
        pageRequest: PageRequest(
          page: data.newsHealth.currentPage,
          perPage: 10,
        )));

    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) => _GetItemFailed(data: data, message: error.message),
      ifRight: (rData) => _GetItemSuccess(
        data: data.copyWith(
          newsHealth: Pagination(
            items: isNewSearch ? rData : [...data.newsHealth.items, ...rData],
            currentPage: currentPage + 1,
            totalPage: data.newsHealth.totalPage,
          ),
          searchContent: content,
        ),
      ),
    );
  }
}
