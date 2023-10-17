import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';

class PlanOverViewCard extends StatelessWidget {
  const PlanOverViewCard({
    super.key,
    required this.context,
  });

  final BuildContext context;

  EdgeInsets get _margin => const EdgeInsets.only(top: 15.0, bottom: 20.0);

  Decoration get _boxDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
            blurRadius: 5.0,
          )
        ],
      );

  TextStyle get _textStyle =>
      context.titleSmall.copyWith(fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.all(10.0),
              margin: _margin.copyWith(left: 15.0),
              decoration: _boxDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(CupertinoIcons.calendar),
                  const SizedBox(width: 5.0),
                  Expanded(child: Text('Timetable', style: _textStyle))
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.all(10.0),
              margin: _margin.copyWith(right: 15.0),
              decoration: _boxDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(CupertinoIcons.timer),
                  const SizedBox(width: 5.0),
                  Expanded(child: Text('Personal training', style: _textStyle)),
                ],
              ),
            ),
          ),
        )
      ].expand((e) => [e, const SizedBox(width: 10.0)]).toList()
        ..removeLast(),
    );
  }
}
