import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/action.dart';
import 'package:flutter/material.dart';

class RenderSettingItem extends StatelessWidget {
  final SettingExerciseActions action;
  final int? data;
  final bool isEnable;
  final Function(dynamic)? onChangeValue;

  const RenderSettingItem({
    super.key,
    required this.action,
    this.data,
    this.isEnable = false,
    this.onChangeValue,
  });

  @override
  Widget build(BuildContext context) {
    Widget settingItem({
      IconData? icon,
      Widget? iconWidget,
      String? title,
      Widget? titleWidget,
      Widget? trailing,
      required Function()? onTap,
    }) {
      return Card(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        color: Theme.of(context).cardColor,
        elevation: 0.3,
        child: ListTile(
          onTap: onTap,
          leading: iconWidget ?? Icon(icon ?? Icons.person, size: 24),
          title: titleWidget ??
              Text(title ?? '',
                  style:
                      context.titleSmall.copyWith(fontWeight: FontWeight.w600)),
          trailing: trailing,
        ),
      );
    }

    final primaryColor = Theme.of(context).primaryColor;

    final smallStyle = context.titleSmall
        .copyWith(fontSize: 12.0, color: Theme.of(context).hintColor);

    final icon = action.renderIcon;
    Widget? trailing;
    Function()? onPress;

    if (action.isSwitch) {
      trailing = Switch(
        value: isEnable,
        onChanged: onChangeValue?.call(!isEnable) ?? (p0) {},
        activeColor: primaryColor,
      );
      onPress = onChangeValue?.call(!isEnable) ?? () {};
    } else {
      trailing = Text(
        action.renderTrailing(strData: data?.toString() ?? '0') ?? '',
        style: smallStyle.copyWith(fontSize: 14.0),
      );
      onPress = () {};
    }

    return settingItem(
      onTap: onPress,
      icon: icon,
      title: action.renderText,
      trailing: trailing,
    );
  }
}
