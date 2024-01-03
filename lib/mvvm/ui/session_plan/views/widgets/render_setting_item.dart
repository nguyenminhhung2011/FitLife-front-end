import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/ui/session_plan/ob/action.dart';
import 'package:flutter/material.dart';

class RenderSettingItem extends StatefulWidget {
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
  State<RenderSettingItem> createState() => _RenderSettingItemState();
}

class _RenderSettingItemState extends State<RenderSettingItem> {
  late int _data;
  late bool _isEnable;

  @override
  void initState() {
    _data = widget.data ?? 0;
    _isEnable = widget.isEnable;
    super.initState();
  }

  void _onChangeNumberData() async {
    final showSliderChangeValue = await context.showSliderChangeValue(
      initData: _data.toDouble(),
      max: widget.action.renderMaxData.toDouble(),
      header: widget.action.renderText,
    );
    if (showSliderChangeValue != -1) {
      setState(() {
        _data = showSliderChangeValue.round();
      });
      widget.onChangeValue?.call(showSliderChangeValue);
    }
  }

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

    final icon = widget.action.renderIcon;
    Widget? trailing;
    Function()? onPress;

    if (widget.action.isSwitch) {
      trailing = Switch(
        value: _isEnable,
        onChanged: (p0) {
          setState(() {
            _isEnable = p0;
          });
          widget.onChangeValue?.call(p0) ?? {};
        },
        activeColor: primaryColor,
      );
      onPress = null;
    } else {
      trailing = Text(
        widget.action.renderTrailing(strData: _data.toString()) ?? '',
        style: smallStyle.copyWith(fontSize: 14.0),
      );
      onPress = _onChangeNumberData;
    }

    return settingItem(
      onTap: onPress,
      icon: icon,
      title: widget.action.renderText,
      trailing: trailing,
    );
  }
}
