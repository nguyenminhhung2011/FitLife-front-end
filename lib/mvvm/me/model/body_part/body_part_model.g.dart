// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_part_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BodyPartModel _$BodyPartModelFromJson(Map<String, dynamic> json) =>
    BodyPartModel(
      json['id'] as int,
      json['name'] as String,
      json['icon'] as String?,
    );

Map<String, dynamic> _$BodyPartModelToJson(BodyPartModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };
