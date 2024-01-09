import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer_model.g.dart';

@JsonSerializable()
class TrainerModel {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'model')
  final String model;

  @JsonKey(name: 'prompt')
  final String prompt;

  @JsonKey(name: 'image')
  final String image;

  @JsonKey(name: 'greetingMessage')
  final String greetingMessage;

  @JsonKey(name: 'bio')
  final String bio;

  TrainerModel({
    required this.id,
    required this.name,
    required this.model,
    required this.prompt,
    required this.image,
    required this.greetingMessage,
    required this.bio,
  });

  factory TrainerModel.fromJson(Map<String, dynamic> json) =>
      _$TrainerModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrainerModelToJson(this);
}
