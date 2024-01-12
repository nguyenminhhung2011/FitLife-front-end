enum Level { beginner, intermediate, advanced, hard }

extension LevelExtensions on Level {
  String get renderString => switch (this) {
        Level.beginner => "Beginner",
        Level.intermediate => "Intermediate",
        Level.advanced => "Advanced",
        _ => "Hard"
      };
}
