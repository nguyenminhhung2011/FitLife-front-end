import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/session/session.dart';

abstract class SessionRepositories {
  Future<SResult<List<Session>>> getUpComingSession();
  Future<SResult<Session>> getSessionById({required String id});
  Future<SResult<List<Session>>> getAllSessionByDailyID(String dailyId);
}
