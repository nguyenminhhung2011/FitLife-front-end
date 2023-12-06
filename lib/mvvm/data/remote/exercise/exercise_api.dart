import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/me/model/body_part/body_part_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'exercise_api.g.dart';

@RestApi()
@injectable
abstract class ExerciseApi {
  static const String branch = "/exercise";
  static const String getBodyPartApi = "$branch/body-part";

  @factoryMethod
  factory ExerciseApi(Dio dio) = _ExerciseApi;

  @GET(getBodyPartApi)
  Future<HttpResponse<List<BodyPartModel>>> getBodyPart();
}
