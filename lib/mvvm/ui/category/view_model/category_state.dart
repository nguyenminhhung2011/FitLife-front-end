part of 'category_view_model.dart';

@freezed
class CategoryState with _$CategoryState {
  const CategoryState._();

  const factory CategoryState.initial({required CategoryData data}) = _Initial;
  const factory CategoryState.loading({required CategoryData data}) = _Loading;
  const factory CategoryState.getCategorySuccess({required CategoryData data}) =
      _GetCategorySuccess;

  const factory CategoryState.getCategoryFailed(
      {required CategoryData data,
      required String message}) = _GetCategoryFailed;

  bool get loading => this is _Loading;
}
