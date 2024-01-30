import 'package:fit_life/mvvm/object/entity/message/message.dart';
import 'package:fit_life/mvvm/object/entity/message/message_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.g.dart';

@JsonSerializable()
class MessageModel {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'role')
  final String role;

  MessageModel({
    required this.id,
    required this.message,
    required this.role,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);

  Message get toEntity => Message(
        id: id,
        message: message,
        role: MessageType.values.firstWhere(
          (element) => element.roleName.toLowerCase() == role.toLowerCase(),
        ),
      );
}
