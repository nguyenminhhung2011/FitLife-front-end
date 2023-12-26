import 'package:fit_life/mvvm/data/local/preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class InputApiCubit extends Cubit<bool> {
  InputApiCubit() : super(false);

  void saveApiKey(String api) async {
    emit(true);
    await Future.delayed(const Duration(seconds: 2));
    CommonAppSettingPref.setApiKey(api);
    emit(false);
  }
}
