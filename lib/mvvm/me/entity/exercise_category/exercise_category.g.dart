// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BodyPart _$$_BodyPartFromJson(Map<String, dynamic> json) => _$_BodyPart(
      id: json['id'] as int,
      header: json['header'] as String,
      description: json['description'] as String?,
      exCountable: json['exCountable'] as int,
      level: json['level'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_BodyPartToJson(_$_BodyPart instance) =>
    <String, dynamic>{
      'id': instance.id,
      'header': instance.header,
      'description': instance.description,
      'exCountable': instance.exCountable,
      'level': instance.level,
      'image': instance.image,
    };
