import 'package:flutter/material.dart';

class DividerDot extends StatelessWidget {
  const DividerDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Theme.of(context).dividerColor,
          ),
        ),
      ],
    );
  }
}
