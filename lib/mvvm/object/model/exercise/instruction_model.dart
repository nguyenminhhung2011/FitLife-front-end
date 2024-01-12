import 'package:json_annotation/json_annotation.dart';

part 'instruction_model.g.dart';

@JsonSerializable()
class Instruction {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'step')
  final int step;

  @JsonKey(name: 'instruction')
  final String instruction;

  Instruction({
    required this.id,
    required this.step,
    required this.instruction,
  });

  factory Instruction.fromJson(Map<String, dynamic> json) =>
      _$InstructionFromJson(json);

  Map<String, dynamic> toJson() => _$InstructionToJson(this);
}
