// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pt_assistant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PTAssistantModel _$PTAssistantModelFromJson(Map<String, dynamic> json) =>
    PTAssistantModel(
      id: json['id'] as int,
      name: json['name'] as String,
      bio: json['bio'] as String,
      createdName: json['createdName'] as String,
    );

Map<String, dynamic> _$PTAssistantModelToJson(PTAssistantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bio': instance.bio,
      'createdName': instance.createdName,
    };
