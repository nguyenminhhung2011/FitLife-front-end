import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/mvvm/data/remote/news_health/news_api.dart';
import 'package:fit_life/mvvm/object/entity/news_health/news_health.dart';
import 'package:fit_life/mvvm/object/entity/request/search_news_request.dart';
import 'package:fit_life/mvvm/object/model/news_health/news_health_model.dart';
import 'package:fit_life/mvvm/object/model/news_health/search_news.dart';
import 'package:fit_life/mvvm/repositories/news_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: NewsRepositories)
class NewsRepositoriesImpl extends BaseApi implements NewsRepositories {
  final NewsApi _newsApi;
  NewsRepositoriesImpl(this._newsApi);

  @override
  Future<SResult<NewsHealth>> getNewsById(int newsId) async =>
      await apiCall<NewsHealthModel, NewsHealth>(
        mapper: (result) => result.toEntity,
        request: () async => await _newsApi.getNewsById(newsId),
      );

  @override
  Future<SResult<List<NewsHealth>>> searchNews(
          SearchNewsRequest request) async =>
      await apiCall<SearchNews, List<NewsHealth>>(
        mapper: (result) => result.content.map((e) => e.toEntity).toList(),
        request: () async => await _newsApi.searchNews(body: request.toJson),
      );
}
