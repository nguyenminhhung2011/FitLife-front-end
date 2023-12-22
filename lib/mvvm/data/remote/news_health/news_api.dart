import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/me/model/news_health/news_health_model.dart';
import 'package:fit_life/mvvm/me/model/news_health/search_news.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api.g.dart';

@RestApi()
@injectable
abstract class NewsApi {
  static const String branch = "/news";
  static const String searchNewsApi = "$branch/search";

  @factoryMethod
  factory NewsApi(Dio dio) = _NewsApi;

  @GET(searchNewsApi)
  Future<HttpResponse<SearchNews>> searchNews(
      {@Body() required Map<String, dynamic> body});

  @GET("$branch/{id}")
  Future<HttpResponse<NewsHealthModel>> getNewsById(@Path('id') int id);
}
