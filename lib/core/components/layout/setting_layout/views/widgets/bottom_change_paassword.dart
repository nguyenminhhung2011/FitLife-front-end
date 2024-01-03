import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/text_form_field_custom.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/object/model/user/change_password.dart';
import 'package:flutter/material.dart';

const _hMargin = 15.0;

class BottomChangePassword extends StatefulWidget {
  const BottomChangePassword({
    super.key,
  });

  @override
  State<BottomChangePassword> createState() => _BottomChangePasswordState();
}

class _BottomChangePasswordState extends State<BottomChangePassword> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  @override
  void dispose() {
    _passwordController.dispose();
    _rePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var headerStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    );
    var textStyle = context.titleMedium.copyWith(
      fontWeight: FontWeight.w500,
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20.0),
        Text(
          S.of(context).changePassword,
          textAlign: TextAlign.center,
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10.0),
        TextFieldCustom(
          type: TextFieldType.backgroundShadow,
          paddingLeft: _hMargin,
          isPasswordField: true,
          paddingRight: _hMargin,
          headerText: S.of(context).password,
          headerTextStyle: headerStyle,
          hintStyle: context.titleMedium,
          hintText: S.of(context).enterYourPassword,
          spacingText: 10.0,
          controller: _passwordController,
          prefix: const Icon(Icons.lock_outline),
          textStyle: textStyle,
        ),
        const SizedBox(height: 10.0),
        TextFieldCustom(
          type: TextFieldType.backgroundShadow,
          paddingLeft: _hMargin,
          isPasswordField: true,
          paddingRight: _hMargin,
          headerText: "New  password",
          headerTextStyle: headerStyle,
          hintStyle: context.titleMedium,
          hintText: "Enter new password",
          spacingText: 10.0,
          controller: _rePasswordController,
          prefix: const Icon(Icons.lock_outline),
          textStyle: textStyle,
        ),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: ButtonCustom(
            onPress: () => context.popArgs(
              ChangePassword(
                  oldPassword: _passwordController.text,
                  newPassword: _rePasswordController.text,
                  confirmPassword: _rePasswordController.text),
            ),
            width: double.infinity,
            height: 45.0,
            child: Text(
              S.of(context).update,
              style: context.titleMedium
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
