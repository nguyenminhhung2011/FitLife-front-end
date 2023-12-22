import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_health.freezed.dart';

@freezed
class NewsHealth with _$NewsHealth {
  const factory NewsHealth({
    required int id,
    required String author,
    required String title,
    required String description,
    required String url,
    required String urlToImage,
    required String content,
    required DateTime publishedAt,
  }) = _NewsHealth;
}
