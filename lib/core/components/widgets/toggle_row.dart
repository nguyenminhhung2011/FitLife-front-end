import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class ToggleRowWidget extends StatelessWidget {
  final Widget? icon;
  final String title;
  final Function(bool?)? onChange;
  final bool value;
  const ToggleRowWidget({
    super.key,
    this.icon,
    required this.title,
    this.onChange,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).dividerColor.withOpacity(0.1),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          if (icon != null) icon!,
          const SizedBox(width: 10),
          Expanded(
            child: Text(title, style: context.textTheme.bodyLarge),
          ),
          Container(
              padding: const EdgeInsets.only(right: 10),
              height: 30,
              child: Switch(
                value: value,
                activeColor: context.primaryColor,
                onChanged: (value) => onChange!(value),
              )),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
