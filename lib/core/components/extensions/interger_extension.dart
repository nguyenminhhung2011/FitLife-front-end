extension IntegerExtension on int {
  String get renderTimeString => this < 10 ? "0$this" : toString();

  int minMaxRequired(int min, int max) {
    if (this < min) {
      return min;
    } else if (this > max) {
      return max;
    }
    return this;
  }
}
