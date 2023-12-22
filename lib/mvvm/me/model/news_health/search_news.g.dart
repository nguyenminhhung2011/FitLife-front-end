// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchNews _$SearchNewsFromJson(Map<String, dynamic> json) => SearchNews(
      content: (json['content'] as List<dynamic>)
          .map((e) => NewsHealthModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchNewsToJson(SearchNews instance) =>
    <String, dynamic>{
      'content': instance.content,
    };
