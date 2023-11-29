import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/ui/exercise_overview/ob/action.dart';
import 'package:flutter/material.dart';

class RenderSettingItem extends StatefulWidget {
  final SettingExerciseActions action;
  final int? data;
  const RenderSettingItem({super.key, required this.action, this.data});

  @override
  State<RenderSettingItem> createState() => _RenderSettingItemState();
}

class _RenderSettingItemState extends State<RenderSettingItem> {
  Color get _primaryColor => Theme.of(context).primaryColor;

  TextStyle get _smallStyle => context.titleSmall
      .copyWith(fontSize: 12.0, color: Theme.of(context).hintColor);

  @override
  Widget build(BuildContext context) {
    final icon = widget.action.renderIcon;
    Widget? trailing;
    Function()? onPress;

    if (widget.action.isSwitch) {
      trailing = Switch(
          value: true, onChanged: (value) {}, activeColor: _primaryColor);
      onPress = () {};
    } else {
      trailing = Text(
        widget.action.renderTrailing(strData: widget.data?.toString() ?? '0') ??
            '',
        style: _smallStyle.copyWith(fontSize: 14.0),
      );
      onPress = () {};
    }

    return _settingItem(
      onTap: onPress,
      icon: icon,
      title: widget.action.renderText,
      trailing: trailing,
    );
  }

  Widget _settingItem({
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
}
