import 'package:fit_life/mvvm/object/entity/exercise_category/exercise_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_data.freezed.dart';

@freezed
class CategoryData with _$CategoryData {
  const factory CategoryData({
    List<BodyPart>? categories,
  }) = _CategoryData;
}
