import 'package:fit_life/mvvm/me/model/page_request/page_request.dart';

class SearchExerciseRequest {
  final String search;

  final String name;

  final String target;

  final String bodyPart;

  PageRequest pageRequest;

  SearchExerciseRequest({
    this.search = "",
    this.name = "",
    this.target = "",
    this.bodyPart = "",
    this.pageRequest = const PageRequest(perPage: 0, page: 10),
  });

  Map<String, dynamic> get toJson => {
        if (target.isNotEmpty) "target": target,
        if (bodyPart.isNotEmpty) "bodyPart": bodyPart,
        if (name.isNotEmpty) "name": name,
        if (search.isNotEmpty) "search": search,
        "pageRequest": pageRequest.toJson,
      };
}
