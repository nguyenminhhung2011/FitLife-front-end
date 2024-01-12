import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/request/update_setting_session_request.dart';
import 'package:fit_life/mvvm/object/entity/session/add_session_dto.dart';
import 'package:fit_life/mvvm/object/entity/session/session.dart';

abstract class SessionRepositories {
  Future<SResult<List<Session>>> getUpComingSession();
  Future<SResult<Session>> getSessionById({required String id});
  Future<SResult<Session>> completeSession({required int id});
  Future<SResult<List<Session>>> getAllSessionByDailyID(String dailyId);
  Future<SResult<Session>> updateSettingSession(
      {required int id, required UpdateSettingSessionRequest request});
  Future<SResult<Session>> createSession({required AddSessionDTO session});
  Future<SResult> deleteSession({required int id});
}
