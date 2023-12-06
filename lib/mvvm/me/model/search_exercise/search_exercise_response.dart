import 'package:fit_life/mvvm/me/model/exercise/exercise_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_exercise_response.g.dart';

@JsonSerializable()
class SearchExerciseResponse {
  @JsonKey(name: 'content')
  final List<ExerciseModel> content;

  @JsonKey(name: 'last')
  final bool last;

  @JsonKey(name: 'totalElements')
  final int totalElements;

  @JsonKey(name: 'totalPages')
  final int totalPages;

  @JsonKey(name: 'size')
  final int size;

  @JsonKey(name: 'first')
  final bool first;

  @JsonKey(name: 'numberOfElements')
  final int numberOfElements;

  @JsonKey(name: 'empty')
  final bool empty;

  SearchExerciseResponse({
    required this.content,
    required this.last,
    required this.totalElements,
    required this.totalPages,
    required this.size,
    required this.first,
    required this.numberOfElements,
    required this.empty,
  });

  factory SearchExerciseResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchExerciseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchExerciseResponseToJson(this);
}
