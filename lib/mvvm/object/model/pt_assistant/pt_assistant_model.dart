import 'package:fit_life/mvvm/object/entity/pt_assistant/pt_assistant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pt_assistant_model.g.dart';

@JsonSerializable()
class PTAssistantModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'bio')
  final String bio;

  @JsonKey(name: 'createdName')
  final String createdName;

  PTAssistantModel({
    required this.id,
    required this.name,
    required this.bio,
    required this.createdName,
  });

  factory PTAssistantModel.fromJson(Map<String, dynamic> json) =>
      _$PTAssistantModelFromJson(json);

  Map<String, dynamic> toJson() => _$PTAssistantModelToJson(this);

  PTAssistant get toEntity =>
      PTAssistant(id: id, name: name, bio: bio, createdName: createdName);
}
