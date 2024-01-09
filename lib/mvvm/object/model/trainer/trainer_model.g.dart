// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrainerModel _$TrainerModelFromJson(Map<String, dynamic> json) => TrainerModel(
      id: json['id'] as String,
      name: json['name'] as String,
      model: json['model'] as String,
      prompt: json['prompt'] as String,
      image: json['image'] as String,
      greetingMessage: json['greetingMessage'] as String,
      bio: json['bio'] as String,
    );

Map<String, dynamic> _$TrainerModelToJson(TrainerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'model': instance.model,
      'prompt': instance.prompt,
      'image': instance.image,
      'greetingMessage': instance.greetingMessage,
      'bio': instance.bio,
    };
