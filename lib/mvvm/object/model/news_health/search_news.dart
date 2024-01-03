import 'package:fit_life/mvvm/object/model/news_health/news_health_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_news.g.dart';

@JsonSerializable()
class SearchNews {
  @JsonKey(name: 'content')
  final List<NewsHealthModel> content;

  SearchNews({required this.content});

  factory SearchNews.fromJson(Map<String, dynamic> json) =>
      _$SearchNewsFromJson(json);

  Map<String, dynamic> toJson() => _$SearchNewsToJson(this);
}
