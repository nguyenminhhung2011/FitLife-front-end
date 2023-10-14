import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/app_coordinator.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/image_const.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/fit_life/render_app_bar.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/loading_page.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/progress_button.dart';
import 'package:flutter_base_clean_architecture/generated/l10n.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/auth/mixins/auth_mixin.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart';
import 'package:flutter_base_clean_architecture/routes/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class SignInView extends ConsumerStatefulWidget {
  const SignInView({super.key});

  @override
  ConsumerState<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends ConsumerState<SignInView> with AuthMixin {
  final _emailController = TextEditingController();

  final _passController = TextEditingController();

  SignInViewModel get _vm => ref.read(signInStateNotifier.notifier);

  String? get _passError => ref.watch(signInStateNotifier).data.passwordError;

  String? get _emailError => ref.watch(signInStateNotifier).data.emailError;

  bool? get _loading => ref.watch(signInStateNotifier).loading;

  final _passwordFocusNode = FocusNode();

  final ValueNotifier<bool> _obscureText = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
  }

  void _onChangeObscureText() {
    _obscureText.value = !_obscureText.value;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    _passwordFocusNode.dispose();

    super.dispose();
  }

  void _listenStateChange(SignInState state) {
    state.maybeWhen(
      signInFailed: (_, message) => context.showSnackBar("🐛 $message"),
      signInSuccess: (_) {},
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(signInStateNotifier, (_, next) => _listenStateChange(next));
    return Stack(
      children: [
        _body(context),
        if (_loading ?? false)
          Container(
            color: Colors.black45,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: _loadingFunction(),
          )
      ],
    );
  }

  Scaffold _body(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
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
            'Log in to your account',
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
              'This import will save your training and nutrition progress',
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    S.of(context).forGotPassword,
                    style: context.titleSmall.copyWith(color: primaryColor),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(S.of(context).signUp, style: context.titleSmall),
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
                  await _vm.signIn(
                    password: _passController.text,
                    email: _emailController.text,
                  );
                  return true;
                },
                textInside: S.of(context).logIn,
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
                        context.openListPageWithRoute(Routes.dashboard),
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
          onChanged: (text) => _vm.passWordChange(text: text),
          autofillHints: const [AutofillHints.password],
          decoration: textFieldDecoration(
            suffixIcon: GestureDetector(
              onTap: _onChangeObscureText,
              child: Icon(
                obscureText ? Icons.lock_outline : Icons.lock_open_sharp,
              ),
            ),
            labelText: S.of(context).password,
            errorText: _passError,
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
      onSubmitted: (_) {
        FocusScope.of(context).requestFocus(_passwordFocusNode);
      },
    );
  }

  Center _loadingFunction() {
    return Center(
      child: StyleLoadingWidget.foldingCube
          .renderWidget(size: 40.0, color: Theme.of(context).primaryColor),
    );
  }
}
