import 'package:fit_life/mvvm/me/model/page_request/page_request.dart';

class SearchNewsRequest {

  final String content;


  PageRequest pageRequest;

  SearchNewsRequest({
    this.content = "",
    this.pageRequest = const PageRequest(perPage: 0, page: 10),
  });

  Map<String, dynamic> get toJson => {
        if (content.isNotEmpty) "content": content,
        "pageRequest": pageRequest.toJson,
      };
}
