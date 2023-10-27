import 'package:flutter/material.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';

class BoxTextWidget extends StatelessWidget {
  final String value;

  const BoxTextWidget({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: context.primaryColor,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16),
      child: Text(
        value,
        style: context.titleLarge.copyWith(
          color: context.textColor,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
