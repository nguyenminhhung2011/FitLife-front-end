import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_status.dart';
import 'message_type.dart';

part 'message.freezed.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String id,
    required String message,
    required MessageType role,
    MessageStatus? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Message;

  const Message._();
}
