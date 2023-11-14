import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/session/session.dart';
import 'package:fit_life/mvvm/me/entity/upcoming_session/upcoming_session.dart';
import 'package:fit_life/mvvm/repo/session_repositories.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: SessionRepositories)
class SessionRepositoriesImpl implements SessionRepositories {
  @override
  Future<SResult<UpComingSession>> getUpComingSession() async {
    return Either.right(
      UpComingSession(
        time: DateTime.now(),
        session: Session(
          id: "id",
          dwId: "dwId",
          description: "This is description of yoga exercise yeah yeah",
          name: "Test header yoga",
          calcTarget: 100,
          time: 30,
          exercises: [
            ...List.generate(
              2,
              (index) => const Exercise(
                  name: "Exercise name",
                  description: "This is description of exercise"),
            )
          ],
        ),
      ),
    );
  }
}
