import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_plan_data.freezed.dart';

@freezed
class SessionPlanData with _$SessionPlanData {
  const factory SessionPlanData({
    String? title,
    String? description,
    int? id,
    int? time,
    List<Session>? sessions,
  }) = _SessionPlanData;
}
