import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/level.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required String dwId,
    Level? level,
    String? description,
    String? name,
    int? calcTarget,
    int? time,
    List<Equipment>? equipments,
    List<Exercise>? exercises,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

@freezed
class Equipment with _$Equipment {
  const factory Equipment({
    required String image,
    required String name,
    required String description,
    required String type,
    int? quantity,
  }) = _Equipment;

  factory Equipment.fromJson(Map<String, dynamic> json) =>
      _$EquipmentFromJson(json);
}
