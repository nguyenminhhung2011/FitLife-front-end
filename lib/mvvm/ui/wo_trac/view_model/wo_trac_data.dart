import 'package:freezed_annotation/freezed_annotation.dart';

part 'wo_trac_data.freezed.dart';

@freezed
class WooTrackData with _$WooTrackData {
  const factory WooTrackData({
    required int currentExIndex,
    required bool isPlayed,
  }) = _WooTrackData;
}
