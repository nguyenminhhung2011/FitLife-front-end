import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_plan_dto.freezed.dart';

@freezed
class AddPlanDto with _$AddPlanDto {
  const factory AddPlanDto({
     String? title,
     String? goal,
     String? level,
     String? preferences,
     DateTime? timeStart,
     DateTime? timeFinish,
     @Default(false) bool isUsingAIGeneratePlan,
  }) = _AddPlanDto;


}