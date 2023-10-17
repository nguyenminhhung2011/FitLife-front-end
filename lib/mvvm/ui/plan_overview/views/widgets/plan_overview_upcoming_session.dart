import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';

class PlanOverViewUpComingSession extends StatelessWidget {
  const PlanOverViewUpComingSession({
    super.key,
    required this.maxHeight,
  });

  final double maxHeight;

  BorderRadiusGeometry get _borderRadius => const BorderRadius.only(
        topLeft: Radius.circular(5.0),
        topRight: Radius.circular(5.0),
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: maxHeight * 0.7,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 50, right: 30),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.7),
            borderRadius: _borderRadius,
          ),
        ),
        Container(
          height: (maxHeight * 0.7) - 8.0,
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          margin: const EdgeInsets.only(left: 42.0, right: 38.0),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: _borderRadius,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.1),
                blurRadius: 5.0,
                offset: const Offset(-1, 0),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'kick start',
                    style: context.titleSmall.copyWith(fontSize: 12.0),
                  ),
                  Text(
                    'Tap to open ✅',
                    style: context.titleSmall.copyWith(fontSize: 12.0),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              Expanded(
                child: Text(
                  '3 sessions waiting for you',
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
