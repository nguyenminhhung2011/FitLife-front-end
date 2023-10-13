import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/configurations/env/env_prod.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/image_const.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';
import 'package:flutter_base_clean_architecture/core/components/layout/setting_layout/controller/setting_bloc.dart';
import 'package:flutter_base_clean_architecture/core/components/layout/setting_layout/utils/setting_utils.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/progress_button.dart';
import 'package:flutter_base_clean_architecture/generated/l10n.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/auth/mixins/auth_mixin.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  SettingBloc get _settingBloc => context.read<SettingBloc>();

  String? get _passError => ref.watch(signInStateNotifier).data.passwordError;

  String? get _emailError => ref.watch(signInStateNotifier).data.emailError;

  final _passwordFocusNode = FocusNode();

  final ValueNotifier<bool> _obscureText = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
  }

  void _listenStateChange(SignInState state) {
    state.maybeWhen(orElse: () {});
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

  @override
  Widget build(BuildContext context) {
    ref.listen(signInStateNotifier, (_, next) => _listenStateChange(next));
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: scaffoldBackgroundColor,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(ImageConst.icon, height: 30.0, width: 30.0),
            const SizedBox(width: 5),
            Text.rich(
              TextSpan(
                style: context.titleSmall.copyWith(fontSize: 14.0),
                children: [
                  const TextSpan(text: 'Hello, I am '),
                  TextSpan(
                    text: environmentProd['name'],
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              ),
            ),
            const Spacer(),
            BlocBuilder<SettingBloc, SettingState>(
              bloc: _settingBloc,
              builder: (_, state) {
                final lang = state.data.langCode;

                final langImage = SettingUtils.locals
                        .firstWhere(
                          (element) =>
                              element.langCode.toUpperCase() ==
                              lang.toUpperCase(),
                        )
                        .image ??
                    ImageConst.baseImageView;

                return Container(
                  width: 35.0,
                  padding: const EdgeInsets.all(5.0),
                  height: 35.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 1, color: Theme.of(context).hintColor),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(langImage, fit: BoxFit.cover),
                  ),
                );
              },
            )
          ],
        ),
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
              style: context.titleSmall,
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
                call: () async {
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
              ].mapIndexed(
                (index, e) => IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(e, height: 100.0, width: 100.0),
                ),
              )
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
}
