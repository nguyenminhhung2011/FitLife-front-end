// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_thread_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatThreadModel _$ChatThreadModelFromJson(Map<String, dynamic> json) =>
    ChatThreadModel(
      id: json['id'] as String,
      title: json['title'] as String,
      openAiThreadId: json['openAiThreadId'] as String?,
      trainer: json['trainer'] == null
          ? null
          : TrainerModel.fromJson(json['trainer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatThreadModelToJson(ChatThreadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'openAiThreadId': instance.openAiThreadId,
      'trainer': instance.trainer,
    };
