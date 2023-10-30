enum ExerciseSet { weight, reps, countable }

extension ExerciseSetExtension on ExerciseSet {
  String get stringGenerate => switch (this) {
        ExerciseSet.weight => "Weight",
        ExerciseSet.reps => "Reps",
        _ => "Countable"
      };

  String get pre => switch (this) {
        ExerciseSet.weight => "libs",
        ExerciseSet.reps => "",
        _ => "times"
      };
}
