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
  final String openAiThreadId;

  @JsonKey(name: 'trainer')
  final TrainerModel? trainer;

  ChatThreadModel({
    required this.id,
    required this.title,
    required this.openAiThreadId,
    this.trainer,
  });

  factory ChatThreadModel.fromJson(Map<String, dynamic> json) =>
      _$ChatThreadModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatThreadModelToJson(this);
}
