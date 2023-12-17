import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:fit_life/mvvm/me/model/exercise/custom_exercise_model.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/level.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_model.g.dart';

@JsonSerializable()
class SessionModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'level')
  final String? level;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'startWithBoot')
  final bool? startWithBoot;

  @JsonKey(name: 'randomMix')
  final bool? randomMix;

  @JsonKey(name: 'done')
  final bool? done;

  @JsonKey(name: 'timePerLesson')
  final int? timePerLesson;

  @JsonKey(name: 'transferTime')
  final int? transferTime;

  @JsonKey(name: 'calcCompleted')
  final int? calcCompleted;

  @JsonKey(name: 'calcTarget')
  final int? calcTarget;

  @JsonKey(name: 'numberRound')
  final int? numberRound;

  @JsonKey(name: 'breakTime')
  final int? breakTime;

  @JsonKey(name: 'customExercise')
  final List<CustomExerciseModel>? customExercise;

  SessionModel({
    required this.id,
    required this.name,
    required this.description,
    required this.startWithBoot,
    required this.randomMix,
    required this.timePerLesson,
    required this.transferTime,
    required this.calcTarget,
    required this.numberRound,
    required this.breakTime,
    this.done,
    this.calcCompleted,
    this.level,
    this.customExercise,
  });

  factory SessionModel.fromJson(Map<String, dynamic> json) =>
      _$SessionModelFromJson(json);

  Map<String, dynamic> toJson() => _$SessionModelToJson(this);

  Session get toEntity => Session(
        id: id.toString(),
        dwId: '',
        name: name,
        level: (level?.isNotEmpty ?? false)
            ? Level.values.firstWhere(
                (element) => element.name.toLowerCase() == level!.toLowerCase())
            : Level.beginner,
        description: description,
        calcTarget: calcTarget,
        timePerLesson: timePerLesson,
        transferTime: transferTime,
        customExercise: customExercise?.map((e) => e.toEntity).toList(),
        numberRound: numberRound,
        breakTime: breakTime,
        startWithBoot: startWithBoot,
        randomMix: randomMix,
        done: done,
        calcCompleted: calcCompleted,
      );
}
