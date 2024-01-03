// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instruction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Instruction _$InstructionFromJson(Map<String, dynamic> json) => Instruction(
      id: json['id'] as int,
      step: json['step'] as int,
      instruction: json['instruction'] as String,
    );

Map<String, dynamic> _$InstructionToJson(Instruction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'step': instance.step,
      'instruction': instance.instruction,
    };
