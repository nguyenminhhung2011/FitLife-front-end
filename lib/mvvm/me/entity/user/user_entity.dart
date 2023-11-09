import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    String? email,
    String? phone,
    String? avatar,
    String? level,
    String? country,
    String? language,
    String? requireNote,
    String? studySchedule,
    String? creditCardNumber,
    DateTime? birthday,
    int? timezone,
    double? avgRating,
    List<String>? roles,
    @Default(true) bool isActivated,
    @Default(true) bool isPhoneActivated,
    @Default(false) bool canSendMessage,
  }) = _User;
}
