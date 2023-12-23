part of 'list_news_view_model.dart';

@freezed
class ListNewsState with _$ListNewsState {
  const ListNewsState._();
  const factory ListNewsState.initial({
    required ListNewsData data,
  }) = _Initial;

  const factory ListNewsState.selectDateSuccess({
    required ListNewsData data,
  }) = _SelectDateSuccess;

  const factory ListNewsState.loading({
    required ListNewsData data,
  }) = _Loading;

  const factory ListNewsState.getItemsSuccess({
    required ListNewsData data,
  }) = _GetItemSuccess;

  const factory ListNewsState.getItemFailed({
    required ListNewsData data,
    required String message,
  }) = _GetItemFailed;

  bool get loading => this is _Loading;
}
