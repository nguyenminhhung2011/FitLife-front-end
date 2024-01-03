import 'package:fit_life/mvvm/object/entity/custom_exercise/custom_exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required int id,
    String? dwId,
    String? name,
    String? description,
    String? level,
    int? calcTarget,
    int? timePerLesson,
    int? numberRound,
    int? breakTime,
    int? calcCompleted,
    bool? startWithBoot,
    bool? done,
    bool? randomMix,
    int? transferTime,
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
