import 'package:flutter/material.dart';
import "../../../../../../core/components/extensions/context_extensions.dart";

class OnboardingStepLayout extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? description;
  final Widget? child;
  const OnboardingStepLayout({
    super.key,
    this.imageUrl,
    this.title,
    this.description,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title ?? "",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: context.textColor,
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          description ?? "",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: context.textColor,
                fontWeight: FontWeight.w400,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        child ?? const SizedBox(),
      ],
    );
  }
}
