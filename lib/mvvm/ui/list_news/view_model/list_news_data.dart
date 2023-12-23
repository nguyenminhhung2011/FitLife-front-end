import 'package:fit_life/mvvm/me/entity/news_health/news_health.dart';
import 'package:fit_life/mvvm/me/entity/pagination/pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_news_data.freezed.dart';

@freezed
class ListNewsData with _$ListNewsData {
  const factory ListNewsData({
    String? searchContent,
    required Pagination<NewsHealth> newsHealth,
  }) = _ListNewsData;
}
