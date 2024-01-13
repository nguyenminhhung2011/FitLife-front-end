import 'package:fit_life/mvvm/object/entity/trainer/trainer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_pt_data.freezed.dart';

@freezed
class AllPtData with _$AllPtData {
  const factory AllPtData({
    required List<Trainer> trainers,
    required String searchContent,
    String? trainerType,
  }) = _AllPtData;
}
