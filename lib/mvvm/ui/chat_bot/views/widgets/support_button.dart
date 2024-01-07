import 'package:collection/collection.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SupportButton extends StatelessWidget {
  final Function(int) onButtonTap;
  const SupportButton({
    super.key,
    required this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...["Explore", "Create bot"]
            .mapIndexed(
              (index, e) => Expanded(child: _button(context, index, e)),
            )
            .expand((e) => [e, const SizedBox(width: 10.0)])
            .toList()
          ..removeLast(),
      ],
    );
  }

  Widget _button(BuildContext context, int index, String e) {
    return InkWell(
      onTap: () {
        if (index == 0) {
          onButtonTap(1);
        } else {
          onButtonTap(3);
        }
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              color: Theme.of(context).shadowColor.withOpacity(0.1),
            )
          ],
          borderRadius: BorderRadius.circular(10.0),
          color: Theme.of(context).cardColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (index == 0)
              const Icon(Icons.search)
            else
              const Icon(Icons.add_reaction),
            const SizedBox(height: 4.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    e,
                    style: context.titleMedium
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(width: 5.0),
                if (index == 0)
                  const Icon(Icons.arrow_forward_ios, size: 14)
                else
                  const Icon(Icons.add, size: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
