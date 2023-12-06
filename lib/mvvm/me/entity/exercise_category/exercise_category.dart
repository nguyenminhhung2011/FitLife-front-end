import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_category.freezed.dart';
part 'exercise_category.g.dart';

@freezed
class BodyPart with _$BodyPart {
  const factory BodyPart({
    required int id,
    required String header,
    String? description,
    required int exCountable,
    required String level,
    required String image,
  }) = _BodyPart;

  factory BodyPart.fromJson(Map<String, dynamic> json) =>
      _$BodyPartFromJson(json);
}
