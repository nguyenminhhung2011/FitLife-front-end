import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/core/components/network/data_state.dart';
import 'package:fit_life/mvvm/data/remote/open_ai/open_ai_api.dart';
import 'package:fit_life/mvvm/repositories/open_ai_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OpenAiRepositories)
class OpenAiRepositoriesImpl extends BaseApi implements OpenAiRepositories {
  final OpenAiApi _openAiApi;

  OpenAiRepositoriesImpl(this._openAiApi);

  @override
  Future<SResult<String>> getOpenAiApi() async =>
      await apiCall<String?, String>(
        mapper: (result) => result ?? "",
        request: () async => await _openAiApi.getOpenAiApi(),
      );

  @override
  Future<SResult> setOpenAiApi(String api) async {
    try {
      final response = await getStateOf(
        request: () async =>
            await _openAiApi.setOpenAiApi(body: {"token": api}),
      );
      if (response is DataFailed) {
        return Either.left(
          AppException(message: response.dioError?.message ?? baseError),
        );
      }
      return const Either.right(true);
    } catch (e) {
      return Either.left(AppException(message: e.toString()));
    }
  }
}
