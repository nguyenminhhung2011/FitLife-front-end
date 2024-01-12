import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/news_health/news_health.dart';
import 'package:fit_life/mvvm/object/entity/request/search_news_request.dart';

abstract class NewsRepositories {
  Future<SResult<List<NewsHealth>>> searchNews(SearchNewsRequest request);

  Future<SResult<NewsHealth>> getNewsById(int newsId);
}
