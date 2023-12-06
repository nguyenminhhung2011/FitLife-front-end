import 'package:json_annotation/json_annotation.dart';

part 'instruction_model.g.dart';

@JsonSerializable()
class InstructionModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'step')
  final int step;

  @JsonKey(name: 'instruction')
  final String instruction;

  InstructionModel({
    required this.id,
    required this.step,
    required this.instruction,
  });

  factory InstructionModel.fromJson(Map<String, dynamic> json) =>
      _$InstructionModelFromJson(json);

  Map<String, dynamic> toJson() => _$InstructionModelToJson(this);
}
