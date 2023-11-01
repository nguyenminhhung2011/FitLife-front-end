import 'package:flutter/material.dart';

List<String> exercises = [
  'Squats',
  'Deadlifts',
  'Planks',
  'benchPress',
  'Treadmill Running',
  'Leg Raises',
];
List<String> difficulty = [
  'Beginner',
  'Intermediate',
  'Advance',
];
List<String> durations = [
  '10',
  '15',
  '20',
  '25',
  '30',
  '35',
  '40',
  '45',
];
List<String> weights = [
  '10',
  '15',
  '20',
  '25',
  '30',
  '35',
  '40',
  '45',
];

enum AddActions { chooseExercise, difficulty, customReputation, customWeights }

extension AddActionExtension on AddActions {
  String get renderText => switch (this) {
        AddActions.chooseExercise => "Choose exercise",
        AddActions.difficulty => "Difficulty",
        AddActions.customReputation => "Custom reputation",
        _ => "Custom weights"
      };

  IconData get renderIcon => switch (this) {
        AddActions.chooseExercise => Icons.line_weight,
        AddActions.difficulty => Icons.change_circle_outlined,
        AddActions.customReputation => Icons.repeat,
        _ => Icons.scale,
      };

  List<String> get renderMapperData => switch (this) {
        AddActions.chooseExercise => exercises,
        AddActions.difficulty => difficulty,
        AddActions.customReputation => durations,
        _ => weights
      };
  bool get isChooseExercise => this == AddActions.chooseExercise;
  bool get isDifficulty => this == AddActions.difficulty;
  bool get isCustomReputation => this == AddActions.customReputation;
}
