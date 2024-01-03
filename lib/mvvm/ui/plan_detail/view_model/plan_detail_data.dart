import 'package:fit_life/mvvm/object/entity/plan_detail/plan_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_detail_data.freezed.dart';

@freezed
class PlanDetailData with _$PlanDetailData {
  const factory PlanDetailData({
    @Default(PlanDetail()) PlanDetail planDetail,
    @Default(false) bool isLoadingSchedule,
  }) = _PlanDetailData;
}
