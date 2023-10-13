import 'package:flutter_base_clean_architecture/core/components/utils/validators.dart';
import 'package:flutter_base_clean_architecture/core/dependency_injection/di.dart';
import 'package:flutter_base_clean_architecture/mvvm/repo/auth_repositories.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/auth/view_model/sign_in/sign_in_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';
part 'sign_in_state.dart';
part 'sign_in_view_model.freezed.dart';

final signInStateNotifier =
    AutoDisposeStateNotifierProvider<SignInViewModel, SignInState>(
        (ref) => SignInViewModel());

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
    if (!Validator.isValidEmail(text)) {
      state = _InvalidFormat(
        data: data.copyWith(emailError: "Email is not format"),
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
    await Future.delayed(const Duration(seconds: 3));
    try {
      final result =
          await _authRepositories.signIn(email: email, password: password);
      if (result == null) {
        state = _SignInFailed(data: data, message: "Data null");
        return;
      }
      state = _SignInSuccess(data: data);
    } catch (e) {
      state = _SignInFailed(data: data, message: e.toString());
    }
  }
}
