import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/dot_custom.dart';
import 'package:flutter/material.dart';

class StepItemWidget extends StatelessWidget {
  final String header;
  final String content;
  final int step;
  final bool isShowIndication;
  const StepItemWidget({
    super.key,
    required this.header,
    required this.content,
    required this.step,
    required this.isShowIndication,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _header(context),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5.0)
              .copyWith(left: 22.0, bottom: 10.0),
          width: double.infinity,
          margin: const EdgeInsets.only(left: 68.0),
          decoration: DottedDecoration(
            linePosition: LinePosition.left,
            strokeWidth: 1.5,
            color: isShowIndication
                ? Theme.of(context).primaryColor
                : Colors.transparent,
          ),
          child: Text(
            content,
            style: context.titleSmall.copyWith(
              fontSize: 11.0,
              color: Theme.of(context).hintColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }

  Row _header(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 80.0,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  '${(step < 10) ? '0' : ''}$step',
                  style: context.titleMedium.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              _dot(context),
            ],
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          flex: 4,
          child: Text(
            header,
            overflow: TextOverflow.ellipsis,
            style: context.titleSmall.copyWith(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }

  Container _dot(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 1, color: primaryColor),
      ),
      child: DotCustom(color: primaryColor, full: true, radius: 14.0),
    );
  }
}
