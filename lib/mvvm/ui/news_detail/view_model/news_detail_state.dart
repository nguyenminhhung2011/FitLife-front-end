part of 'news_detail_view_model.dart';

@freezed
class NewsDetailState with _$NewsDetailState {
  const NewsDetailState._();
  const factory NewsDetailState.initial({required NewsDetailData data}) =
      _Initial;

  const factory NewsDetailState.loading({required NewsDetailData data}) =
      _Loading;

  const factory NewsDetailState.getNewsByIdSuccess(
      {required NewsDetailData data}) = _GetNewsByIdSuccess;

  const factory NewsDetailState.getNewsByIdFailed(
      {required NewsDetailData data,
      required String message}) = _GetNewsByIdFailed;

  const factory NewsDetailState.getTopNewsSuccess(
      {required NewsDetailData data}) = _GetTopNewsSuccess;

  const factory NewsDetailState.getTopNewsFailed({
    required NewsDetailData data,
    required String message,
  }) = _GetTopNewsFailed;

  bool get loading => this is _Loading;
}
