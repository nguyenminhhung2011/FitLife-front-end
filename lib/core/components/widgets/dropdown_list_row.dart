import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class DropdownListRowWidget extends StatelessWidget {
  final Widget? icon;
  final List<String>? listItem;
  final String title;
  final Function(String?)? onChange;
  final String itemChoice;

  const DropdownListRowWidget({
    super.key,
    this.icon,
    required this.listItem,
    required this.title,
    this.onChange,
    required this.itemChoice,
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
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(15),
              value: itemChoice,
              elevation: 5,
              icon: const Icon(Icons.arrow_drop_down),
              items: listItem
                  ?.map(
                    (e) => DropdownMenuItem<String>(
                      value: e,
                      child: Text(
                        e,
                        style: context.textTheme.bodyMedium,
                      ),
                    ),
                  )
                  .toList(),
              onChanged: onChange,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
