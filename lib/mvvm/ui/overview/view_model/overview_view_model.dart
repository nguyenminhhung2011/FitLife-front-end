import 'dart:math';

import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/me/entity/request/search_news_request.dart';
import 'package:fit_life/mvvm/me/entity/upcoming_session/upcoming_session.dart';
import 'package:fit_life/mvvm/me/model/page_request/page_request.dart';
import 'package:fit_life/mvvm/repo/news_repositories.dart';
import 'package:fit_life/mvvm/repo/session_repositories.dart';
import 'package:fit_life/mvvm/ui/overview/view_model/overview_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';
part 'overview_state.dart';
part 'overview_view_model.freezed.dart';

final overviewStateNotifier =
    AutoDisposeStateNotifierProvider<OverviewViewModel, OverviewState>(
        (ref) => injector.get<OverviewViewModel>());

@injectable
class OverviewViewModel extends StateNotifier<OverviewState> {
  final _sessionRepositories = injector.get<SessionRepositories>();
  final _newsRepositories = injector.get<NewsRepositories>();

  OverviewViewModel() : super(const _Initial(data: OverviewData()));

  OverviewData get data => state.data;

  Future<void> getUpcomingScheduleExercise() async {
    state =
        _Loading(data: data.copyWith(isLoadingUpcomingScheduleExercise: true));
    final call = await _sessionRepositories.getUpComingSession();
    if (!mounted) return;
    state = call.fold(
      ifLeft: (error) => _GetUpComingSessionFailed(
        data: data.copyWith(isLoadingUpcomingScheduleExercise: false),
        message: error.toString(),
      ),
      ifRight: (rData) => _GetUpComingSessionSuccess(
        data: data.copyWith(
          upComingSession: rData.isNotEmpty
              ? rData
                  .map((e) => UpComingSession(session: e, time: DateTime.now()))
                  .toList()
                  .first
              : null,
          isLoadingUpcomingScheduleExercise: false,
        ),
      ),
    );
  }

  Future<void> getTopNews() async {
    state = _Loading(data: data.copyWith(isLoadingTopNews: true));

    final call = await _newsRepositories.searchNews(
      SearchNewsRequest(
          pageRequest: PageRequest(perPage: 3, page: Random().nextInt(21))),
    );
    if (!mounted) return;
    state = call.fold(
      ifRight: (rData) => _GetTopNewsSuccess(
        data: data.copyWith(
          isLoadingTopNews: false,
          news: rData,
        ),
      ),
      ifLeft: (error) => _GetTopNewsFailed(
          data: data.copyWith(isLoadingTopNews: false), message: error.message),
    );
  }
}
