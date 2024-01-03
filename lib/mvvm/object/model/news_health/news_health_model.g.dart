// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_health_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsHealthModel _$NewsHealthModelFromJson(Map<String, dynamic> json) =>
    NewsHealthModel(
      id: json['id'] as int,
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      content: json['content'] as String?,
      publishedAt: json['publishedAt'] as String?,
    );

Map<String, dynamic> _$NewsHealthModelToJson(NewsHealthModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'content': instance.content,
      'publishedAt': instance.publishedAt,
    };
