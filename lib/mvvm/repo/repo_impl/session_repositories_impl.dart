import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/mvvm/data/remote/session/session_api.dart';
import 'package:fit_life/mvvm/me/entity/request/update_setting_session_request.dart';
import 'package:fit_life/mvvm/me/entity/session/add_session_dto.dart';
import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:fit_life/mvvm/me/model/session/session_model.dart';
import 'package:fit_life/mvvm/repo/session_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SessionRepositories)
class SessionRepositoriesImpl extends BaseApi implements SessionRepositories {
  final SessionApi _sessionApi;

  SessionRepositoriesImpl(this._sessionApi);

  @override
  Future<SResult<List<Session>>> getUpComingSession() async {
    return await apiCall<List<SessionModel>, List<Session>>(
      mapper: (result) {
        return result.map((e) => e.toEntity).toList();
      },
      request: () async => await _sessionApi.getUpComingSession(),
    );
  }

  @override
  Future<SResult<Session>> getSessionById({required String id}) async {
    return await apiCall<SessionModel, Session>(
      mapper: (result) => result.toEntity,
      request: () async => await _sessionApi.getSessionById(int.parse(id)),
    );
  }

  @override
  Future<SResult<List<Session>>> getAllSessionByDailyID(String dailyId) async {
    return apiCall<List<SessionModel>, List<Session>>(
      mapper: (result) => result.map((e) => e.toEntity).toList(),
      request: () async =>
          await _sessionApi.getAllSessionByDaily(int.parse(dailyId)),
    );
  }

  @override
  Future<SResult<Session>> updateSettingSession(
      {required int id, required UpdateSettingSessionRequest request}) async {
    return apiCall<SessionModel, Session>(
      mapper: (result) => result.toEntity,
      request: () async =>
          await _sessionApi.updateSettingSession(id, body: request.toJson()),
    );
  }

  @override
  Future<SResult<Session>> createSession({required AddSessionDTO session}) {
    return apiCall<SessionModel, Session>(
      mapper: (result) => result.toEntity,
      request: () async =>
          await _sessionApi.createSession(body: session.toJson()),
    );
  }

  @override
  Future<SResult> deleteSession({required int id}) {
    return apiCall<void, void>(
      mapper: (_) {},
      request: () async => await _sessionApi.deleteSession(id),
    );
  }

  @override
  Future<SResult<Session>> completeSession({required int id}) async =>
      await (apiCall<SessionModel, Session>(
        mapper: (result) => result.toEntity,
        request: () async => await _sessionApi.completeSession(id),
      ));
}
