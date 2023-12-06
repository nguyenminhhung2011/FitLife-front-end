// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instruction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstructionModel _$InstructionModelFromJson(Map<String, dynamic> json) =>
    InstructionModel(
      id: json['id'] as int,
      step: json['step'] as int,
      instruction: json['instruction'] as String,
    );

Map<String, dynamic> _$InstructionModelToJson(InstructionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'step': instance.step,
      'instruction': instance.instruction,
    };
