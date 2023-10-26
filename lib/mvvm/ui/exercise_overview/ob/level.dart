enum Level { beginner, intermediate, advanced }

extension LevelExtensions on Level {
  String get renderString => switch (this) {
        Level.beginner => "Beginner",
        Level.intermediate => "Intermediate",
        _ => "Advanced"
      };
}
