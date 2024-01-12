import 'package:fit_life/mvvm/object/entity/news_health/news_health.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_detail_data.freezed.dart';

@freezed
class NewsDetailData with _$NewsDetailData {
  const factory NewsDetailData({
    NewsHealth? detail,
    List<NewsHealth>? news,
    @Default(false) bool isLoadingTopNews,
  }) = _NewsDetailData;
}
