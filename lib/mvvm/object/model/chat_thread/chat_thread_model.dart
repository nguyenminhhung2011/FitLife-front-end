import 'package:fit_life/mvvm/object/entity/chat/chat_thread.dart';
import 'package:fit_life/mvvm/object/model/message/message_model.dart';
import 'package:fit_life/mvvm/object/model/trainer/trainer_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_thread_model.g.dart';

@JsonSerializable()
class ChatThreadModel {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'openAiThreadId')
  final String? openAiThreadId;

  @JsonKey(name: 'chats')
  final List<MessageModel>? chats;

  @JsonKey(name: 'trainer')
  final TrainerModel? trainer;

  ChatThreadModel({
    required this.id,
    required this.title,
    this.openAiThreadId,
    this.chats,
    this.trainer,
  });

  factory ChatThreadModel.fromJson(Map<String, dynamic> json) =>
      _$ChatThreadModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatThreadModelToJson(this);

  ChatThread get toEntity => ChatThread(
        id: id,
        title: title,
        openAiThreadId: openAiThreadId,
        trainer: trainer?.toEntity,
        chats: chats?.map((e) => e.toEntity).toList(),
      );
}
