import 'package:collection/collection.dart';
import 'package:fit_life/core/components/widgets/loading_page.dart';
import 'package:fit_life/mvvm/ui/auth/view_model/sign_up/sign_up_data.dart';
import 'package:fit_life/mvvm/ui/auth/view_model/sign_up/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/fit_life/render_app_bar.dart';
import 'package:fit_life/core/components/widgets/progress_button.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/ui/auth/mixins/auth_mixin.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class SignUpView extends ConsumerStatefulWidget {
  const SignUpView({super.key});

  @override
  ConsumerState<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends ConsumerState<SignUpView> with AuthMixin {
  SignUpViewModel get _vm => ref.read(signUpStateNotifier.notifier);

  SignUpData get _data => ref.watch(signUpStateNotifier).data;

  String? get _passWordError => _data.passwordError;

  String? get _emailError => _data.emailError;

  final _emailController = TextEditingController();

  final _passController = TextEditingController();

  final _rePassword = TextEditingController();

  final ValueNotifier<bool> _obscureText = ValueNotifier(true);

  final ValueNotifier<bool> _obscureReText = ValueNotifier(true);

  void _onChangeObscureText() {
    _obscureText.value = !_obscureText.value;
  }

  void _onChangeObscureReText() {
    _obscureReText.value = !_obscureReText.value;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    _rePassword.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<SignUpState>(signUpStateNotifier, (_, state) {
      state.maybeWhen(
        signUpSuccess: (_) {
          context.showSnackBar(S.of(context).signUpSuccess);
        },
        signUpFailed: (_, message) {
          context.showSnackBar(message);
        },
        orElse: () {},
      );
    });
    return Stack(
      children: [
        _body(context),
        // if (_loading ?? false)
        //   Container(
        //     color: Colors.black45,
        //     width: MediaQuery.of(context).size.width,
        //     height: MediaQuery.of(context).size.height,
        //     child: _loadingFunction(),
        //   )
      ],
    );
  }

  Scaffold _body(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: scaffoldBackgroundColor,
        title: const RenderAppBar(),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(height: 20.0),
          Image.asset(
            ImageConst.icon,
            width: double.infinity,
            height: context.heightDevice * 0.3,
          ),
          Text(
            'Create your account',
            textAlign: TextAlign.center,
            style: context.titleLarge.copyWith(
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'Please create and use all features of app',
              style: context.titleSmall.copyWith(fontSize: 12.0),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: _emailTextField(),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            child: _passwordField(),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            child: _rePasswordField(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const SizedBox(width: 15.0),
                Text(
                  "Already account",
                  style: context.titleSmall.copyWith(color: primaryColor),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () => context.pop(),
                  child: Text(S.of(context).logIn, style: context.titleSmall),
                )
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProgressButton(
                width: 300.0,
                isAnimation: true,
                radius: 10.0,
                textStyle: context.titleMedium
                    .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
                call: () async {
                  await _vm.signUp(
                    email: _emailController.text,
                    password: _passController.text,
                    rePassword: _rePassword.text,
                  );
                  return true;
                },
                textInside: S.of(context).signUp,
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Text(S.of(context).orContinue,
              textAlign: TextAlign.center, style: context.titleSmall),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...[
                ImageConst.facebookIcon,
                ImageConst.googleIcon,
              ].mapIndexed((index, e) => IconButton(
                    onPressed: () =>
                        context.openListPageWithRoute(Routes.onboarding),
                    icon: SvgPicture.asset(e, height: 100.0, width: 100.0),
                  ))
            ],
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Widget _passwordField() {
    return ValueListenableBuilder<bool>(
      valueListenable: _obscureText,
      builder: (_, obscureText, __) {
        return TextField(
          obscureText: obscureText,
          controller: _passController,
          onChanged: (text) => _vm.passwordChange(text: text),
          autofillHints: const [AutofillHints.password],
          decoration: textFieldDecoration(
            suffixIcon: GestureDetector(
              onTap: _onChangeObscureText,
              child: Icon(
                obscureText ? Icons.lock_outline : Icons.lock_open_sharp,
              ),
            ),
            labelText: S.of(context).password,
            errorText: _passWordError,
          ),
        );
      },
    );
  }

  Widget _rePasswordField() {
    return ValueListenableBuilder<bool>(
      valueListenable: _obscureReText,
      builder: (_, obscureText, __) {
        return TextField(
          obscureText: obscureText,
          controller: _rePassword,
          onChanged: (text) => {},
          autofillHints: const [AutofillHints.password],
          decoration: textFieldDecoration(
            suffixIcon: GestureDetector(
              onTap: _onChangeObscureReText,
              child: Icon(
                obscureText ? Icons.lock_outline : Icons.lock_open_sharp,
              ),
            ),
            labelText: S.of(context).rePassword,
            errorText: null,
          ),
        );
      },
    );
  }

  Widget _emailTextField() {
    return TextField(
      controller: _emailController,
      decoration: textFieldDecoration(
        suffixIcon: const Padding(
          padding: EdgeInsetsDirectional.only(end: 8.0),
          child: Icon(Icons.email),
        ),
        labelText: S.of(context).email,
        errorText: _emailError,
      ), // InputDecoration(
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      style: const TextStyle(fontSize: 16.0),
      onChanged: (text) => _vm.emailChange(text: text),
      textInputAction: TextInputAction.next,
      onSubmitted: (_) {},
    );
  }

  Center _loadingFunction() {
    return Center(
      child: StyleLoadingWidget.foldingCube
          .renderWidget(size: 40.0, color: Theme.of(context).primaryColor),
    );
  }
}
