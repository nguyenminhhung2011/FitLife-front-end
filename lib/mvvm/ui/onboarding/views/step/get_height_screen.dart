import 'package:flutter/cupertino.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/box_text.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/widgets/onboarding_step_layout.dart';

const _kDefaultValue = 100;
const _kNumRender = 150;

class GetHeightStep extends StatefulWidget {
  final Function(int)? onChange;
  const GetHeightStep({super.key, this.onChange});

  @override
  State<GetHeightStep> createState() => _GetHeightStepState();
}

class _GetHeightStepState extends State<GetHeightStep> {
  int height = 100;

  @override
  Widget build(BuildContext context) {
    return OnboardingStepLayout(
      title: S.of(context).whatIsYourHeight,
      description: S.of(context).heightDesc,
      child: Column(
        children: [
          const SizedBox(height: 16),
          SizedBox(
            width: 200,
            height: 200,
            child: CupertinoPicker(
              selectionOverlay: Container(
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      width: 2,
                      color: context.primaryColor,
                    ),
                  ),
                ),
              ),
              itemExtent: 77,
              diameterRatio: 1.2,
              onSelectedItemChanged: (int value) {
                if (widget.onChange != null) {
                  widget.onChange!(value);
                }
                setState(() {
                  height = value + _kDefaultValue;
                });
              },
              children:
                  List.generate(_kNumRender, (index) => index + _kDefaultValue)
                      .map(
                        (e) => Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              e.toString(),
                              style: context.titleLarge.copyWith(
                                color: context.textColor,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              'cm',
                              style: context.titleLarge.copyWith(
                                color: context.textColor,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      )
                      .toList(),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: BoxTextWidget(value: '$height cm'),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: BoxTextWidget(
                    value: '${(height * 0.032808399).toStringAsFixed(2)} ft'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
