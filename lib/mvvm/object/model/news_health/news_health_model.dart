import 'package:fit_life/mvvm/object/entity/news_health/news_health.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_health_model.g.dart';

@JsonSerializable()
class NewsHealthModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'author')
  final String? author;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'url')
  final String? url;

  @JsonKey(name: 'urlToImage')
  final String? urlToImage;

  @JsonKey(name: 'content')
  final String? content;

  @JsonKey(name: 'publishedAt')
  final String? publishedAt;

  NewsHealthModel({
    required this.id,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.content,
    this.publishedAt,
  });

  factory NewsHealthModel.fromJson(Map<String, dynamic> json) =>
      _$NewsHealthModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsHealthModelToJson(this);

  NewsHealth get toEntity => NewsHealth(
        id: id,
        author: author ?? "",
        title: title ?? "",
        description: description ?? "",
        url: url ?? "",
        urlToImage: urlToImage ?? "",
        content: content ?? "",
        publishedAt: (publishedAt?.isNotEmpty ?? false)
            ? DateTime.parse(publishedAt!)
            : DateTime.now(),
      );
}
