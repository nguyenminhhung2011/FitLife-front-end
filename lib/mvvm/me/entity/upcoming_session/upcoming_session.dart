import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_session.freezed.dart';

@freezed
class UpComingSession with _$UpComingSession {
  const factory UpComingSession({
    required Session session,
    required DateTime time,
  }) = _UpComingSession;
}
