import 'dart:async';

import 'package:fit_life/core/components/utils/validators.dart';
import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/repo/auth_repositories.dart';
import 'package:fit_life/mvvm/ui/auth/view_model/sign_up/sign_up_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_state.dart';

part 'sign_up_view_model.freezed.dart';

final signUpStateNotifier =
    AutoDisposeStateNotifierProvider<SignUpViewModel, SignUpState>(
        (ref) => SignUpViewModel());

@injectable
class SignUpViewModel extends StateNotifier<SignUpState> {
  final AuthRepositories _authRepositories = injector.get<AuthRepositories>();

  SignUpViewModel() : super(const _Initial(data: SignUpData()));

  SignUpData get data => state.data;

  void passwordChange({required String text}) {
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
    }
  }

  void emailChange({required String text}) {
    if (text.isEmpty) {
      state = _InvalidFormat(data: data.copyWith(emailError: "Email is empty"));
      return;
    }
    if (!Validator.isValidEmail(text)) {
      state = _InvalidFormat(
        data: data.copyWith(emailError: "Email is not format"),
      );
    }
  }

  Future<void> signUp(
      {required String password,
      required String email,
      required String rePassword}) async {
    if (state.isInValidFormat) {
      return;
    }
    if (rePassword != password) {
      state = _SignUpFailed(data: data, message: "RepPassword is in valid");
      return;
    }
    await Future.delayed(const Duration(seconds: 3));
    try {
      final result =
          await _authRepositories.register(email: email, password: password);
      if (result == null) {
        state = _SignUpFailed(data: data, message: "Data null");
        return;
      }
      state = _SignUpSuccess(data: data);
    } catch (e) {
      state = _SignUpFailed(data: data, message: e.toString());
    }
  }
}
