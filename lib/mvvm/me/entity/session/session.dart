import 'package:fit_life/mvvm/me/entity/custom_exercise/custom_exercise.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/level.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required String dwId,
    String? name,
    Level? level,
    String? description,
    int? calcTarget,
    int? timePerLesson,
    int? numberRound,
    int? breakTime,
    int? transferTime,
    List<Equipment>? equipments,
    List<CustomExercise>? customExercise,
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
