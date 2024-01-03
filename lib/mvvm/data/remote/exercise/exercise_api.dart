import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/object/entity/exercise/exercise_pagination.dart';
import 'package:fit_life/mvvm/object/model/body_part/body_part_model.dart';
import 'package:fit_life/mvvm/object/model/exercise/exercise_model.dart';
import 'package:fit_life/mvvm/object/model/search_exercise/search_exercise_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'exercise_api.g.dart';

@RestApi()
@injectable
abstract class ExerciseApi {
  static const String branch = "/exercise";
  static const String getBodyPartApi = "$branch/body-part";
  static const String searchExerciseApi = "$branch/search";

  @factoryMethod
  factory ExerciseApi(Dio dio) = _ExerciseApi;

  @GET(getBodyPartApi)
  Future<HttpResponse<List<BodyPartModel>>> getBodyPart();

  @GET(searchExerciseApi)
  Future<HttpResponse<SearchExerciseResponse>> searchExercise(
      {@Body() required Map<String, dynamic> body});

  @GET("$branch/{id}")
  Future<HttpResponse<ExerciseModel>> getExerciseById(@Path('id') int id);

  @GET(branch)
  Future<HttpResponse<ExercisePagination>> getExercisePagination(
      {@Body() required Map<String, dynamic> body});
}
