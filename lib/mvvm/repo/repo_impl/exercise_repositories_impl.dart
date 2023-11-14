import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/repo/exercise_repositories.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: ExerciseRepositories)
class ExerciseRepositoriesImpl implements ExerciseRepositories {
  @override
  Future<SResult<List<ExerciseCategory>>> getExerciseCategories(
      {required int currentPage, required int perPage}) async {
    return const Either.right(<ExerciseCategory>[
      ExerciseCategory(
        header: 'Upper Body',
        description: 'This is description of upper body',
        exCountable: 21,
        level: 'Beginner ⚡ Advanced',
        image: ImageConst.banner1,
      ),
      ExerciseCategory(
        header: 'Cardio',
        description: 'This is description of Cardio',
        exCountable: 31,
        level: 'Medium ⚡ Advanced',
        image: ImageConst.banner2,
      ),
      ExerciseCategory(
        header: 'Stretch',
        description: 'This is description of Stretch',
        exCountable: 19,
        level: 'Beginner ⚡ Advanced',
        image: ImageConst.banner3,
      ),
    ]);
  }
}
