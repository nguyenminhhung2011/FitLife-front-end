import 'package:freezed_annotation/freezed_annotation.dart';

part 'fit_overview_data.freezed.dart';

@freezed
class FitOverViewData with _$FitOverViewData {
  const factory FitOverViewData({
    @Default([]) List<DateTime> rangeDate,
  }) = _FitOverViewData;
}
