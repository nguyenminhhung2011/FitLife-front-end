import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';

class RenderOverviewAppBar extends StatefulWidget {
  const RenderOverviewAppBar({super.key});
  @override
  State<RenderOverviewAppBar> createState() => _RenderOverviewAppBarState();
}

class _RenderOverviewAppBarState extends State<RenderOverviewAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back to FitLife',
                style: context.titleSmall.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).hintColor,
                  fontSize: 12.0,
                ),
                maxLines: 1,
              ),
              const SizedBox(height: 5.0),
              Text(
                'Nguyen Minh Hung',
                style:
                    context.titleMedium.copyWith(fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.bell,
              size: 20.0, color: context.titleLarge.color!),
        )
      ],
    );
  }
}
