import 'package:fit_life/core/components/network/app_exception.dart';

abstract class OpenAiRepositories {
  Future<SResult<String>> getOpenAiApi();
  Future<SResult> setOpenAiApi(String api);
}
