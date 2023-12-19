import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart.freezed.dart';

@freezed
class Chart with _$Chart {
  const factory Chart({
    required int calories,
    required DateTime time,
  }) = _Chart;
}
