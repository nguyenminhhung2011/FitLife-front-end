import 'package:fit_life/mvvm/me/entity/custom_exercise/custom_exercise.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/level.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required String dwId,
    String? name,
    String? description,
    Level? level,
    int? calcTarget,
    int? timePerLesson,
    int? numberRound,
    int? breakTime,
    int? calcCompleted,
    bool? startWithBoot,
    bool? done,
    bool? randomMix,
    int? transferTime,
    List<Equipment>? equipments,
    List<CustomExercise>? customExercise,
  }) = _Session;
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
}
