import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:fit_life/mvvm/me/entity/upcoming_session/upcoming_session.dart';

abstract class SessionRepositories {
  Future<SResult<UpComingSession>> getUpComingSession();
  Future<SResult<Session>> getSessionById({required String id});
  Future<SResult<List<Session>>> getAllSessionByDailyID(String dailyId);
}
