import 'dart:math';

import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/me/entity/request/search_news_request.dart';
import 'package:fit_life/mvvm/me/model/page_request/page_request.dart';
import 'package:fit_life/mvvm/repo/news_repositories.dart';
import 'package:fit_life/mvvm/ui/news_detail/view_model/news_detail_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'news_detail_state.dart';

part 'news_detail_view_model.freezed.dart';

final AutoDisposeStateNotifierProvider<NewsDetailViewModel, NewsDetailState>
    newsDetailStateNotifier = AutoDisposeStateNotifierProvider(
        (ref) => injector.get<NewsDetailViewModel>());

@injectable
class NewsDetailViewModel extends StateNotifier<NewsDetailState> {
  final _newsRepositories = injector.get<NewsRepositories>();
  NewsDetailViewModel() : super(const _Initial(data: NewsDetailData()));

  NewsDetailData get data => state.data;

  Future<void> getNewsById(int newsId) async {
    state = _Loading(data: data);
    final response = await _newsRepositories.getNewsById(newsId);
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) => _GetNewsByIdFailed(data: data, message: error.message),
      ifRight: (rData) => _GetNewsByIdSuccess(
        data: data.copyWith(detail: rData),
      ),
    );
  }

  Future<void> getTopNews() async {
    state = _Loading(data: data.copyWith(isLoadingTopNews: true));

    final call = await _newsRepositories.searchNews(
      SearchNewsRequest(
          pageRequest: PageRequest(perPage: 3, page: Random().nextInt(21))),
    );
    if (!mounted) return;
    state = call.fold(
      ifRight: (rData) => _GetTopNewsSuccess(
        data: data.copyWith(
          isLoadingTopNews: false,
          news: rData,
        ),
      ),
      ifLeft: (error) => _GetTopNewsFailed(
          data: data.copyWith(isLoadingTopNews: false), message: error.message),
    );
  }
}
