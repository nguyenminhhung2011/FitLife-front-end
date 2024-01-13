import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/data/local/preferences.dart';
import 'package:fit_life/mvvm/repositories/open_ai_repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class InputApiCubit extends Cubit<bool> {
  final _openAiApiRepositories = injector.get<OpenAiRepositories>();
  InputApiCubit() : super(false);

  void saveApiKey(
    String api, {
    required Function(String) errorResponse,
  }) async {
    emit(true);
    final response = await _openAiApiRepositories.setOpenAiApi(api);
    response.fold(
        ifLeft: (error) => errorResponse.call(error.message), ifRight: (_) {});
    emit(false);
  }

  void getApiKey({
    required Function(String) errorResponse,
    required Function(String) successResponse,
  }) async {
    emit(true);
    final response = await _openAiApiRepositories.getOpenAiApi();
    response.fold(
      ifRight: (data) => successResponse.call(data),
      ifLeft: (error) => errorResponse.call(error.message),
    );
    emit(false);
  }
}
