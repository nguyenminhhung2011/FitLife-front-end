import 'package:fit_life/core/components/utils/validators.dart';
import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/repositories/auth_repositories.dart';
import 'package:fit_life/mvvm/ui/auth/view_model/sign_in/sign_in_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';
part 'sign_in_state.dart';
part 'sign_in_view_model.freezed.dart';

final signInStateNotifier =
    AutoDisposeStateNotifierProvider<SignInViewModel, SignInState>(
        (ref) => injector.get<SignInViewModel>());

@injectable
class SignInViewModel extends StateNotifier<SignInState> {
  final AuthRepositories _authRepositories = injector.get<AuthRepositories>();

  SignInViewModel() : super(const _Initial(data: SignInData()));

  SignInData get data => state.data;

  void passWordChange({required String text}) {
    if (text.isEmpty) {
      state = _InvalidFormat(
        data: data.copyWith(passwordError: "Password is empty"),
      );
      return;
    }
    if (!Validator.isValidPassword(text)) {
      state = _InvalidFormat(
        data: data.copyWith(passwordError: "Password is not format"),
      );
      return;
    }
    state = _Initial(data: data.copyWith(passwordError: null));
  }

  void emailChange({required String text}) {
    if (text.isEmpty) {
      state = _InvalidFormat(
        data: data.copyWith(emailError: "Email is empty"),
      );
      return;
    }
    state = _Initial(data: data.copyWith(emailError: null));
  }

  Future<void> signIn({required String password, required String email}) async {
    state = _Loading(data: data);
    if ((data.emailError?.isNotEmpty ?? false) ||
        (data.passwordError?.isNotEmpty ?? false)) {
      state = _SignInFailed(data: data, message: "Invalid input format");
      return;
    }
    state =
        (await _authRepositories.signIn(email: email, password: password)).fold(
      ifLeft: (error) => _SignInFailed(data: data, message: error.message),
      ifRight: (isCreated) => _SignInSuccess(data: data, isCreated: isCreated),
    );
  }
}
