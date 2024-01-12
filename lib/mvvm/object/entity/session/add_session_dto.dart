
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_session_dto.freezed.dart';
part 'add_session_dto.g.dart';

@freezed
class AddSessionDTO with _$AddSessionDTO {
  const factory AddSessionDTO({
    int? dailyWorkouts,
    bool? startWithBoot,
    bool? randomMix,
    int? timePerLesson,
    int? transferTime,
    int? calcTarget,
    String? description,
    String? name,
    int? numberRound,
    int? breakTime,
    String? level,
  }) = _AddSessionDTO;

  factory AddSessionDTO.fromJson(Map<String, dynamic> json) =>
      _$AddSessionDTOFromJson(json);
}
