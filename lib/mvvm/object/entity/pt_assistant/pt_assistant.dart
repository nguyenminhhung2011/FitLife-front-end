import 'package:freezed_annotation/freezed_annotation.dart';

part 'pt_assistant.freezed.dart';

@freezed
class PTAssistant with _$PTAssistant {
  const factory PTAssistant({
    required int id,
    required String name,
    required String bio,
    required String createdName,
  }) = _PTAssistant;
}
