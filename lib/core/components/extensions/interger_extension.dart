extension IntegerExtension on int {
  String get renderTimeString => this < 10 ? "0$this" : toString();
} 