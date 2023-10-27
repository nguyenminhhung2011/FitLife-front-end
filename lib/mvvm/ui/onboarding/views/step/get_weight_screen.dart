import 'package:flutter/material.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/widgets/onboarding_step_layout.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class GetWeightScreen extends StatefulWidget {
  const GetWeightScreen({super.key});

  @override
  State<GetWeightScreen> createState() => _GetWeightScreenState();
}

class _GetWeightScreenState extends State<GetWeightScreen> {
  int weight = 50;

  Widget _buildItemList(BuildContext context, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            color: (index == weight)
                ? context.primaryColor
                : Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 3, color: context.primaryColor),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$index',
                  style: context.titleLarge.copyWith(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'Kg',
                  style: context.titleLarge.copyWith(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingStepLayout(
      title: S.of(context).whatIsYourWeight,
      description: S.of(context).weightDescription,
      child: SizedBox(
        width: context.widthDevice,
        height: 300,
        child: ScrollSnapList(
          itemBuilder: _buildItemList,
          itemSize: 150,
          dynamicItemSize: true,
          itemCount: 150,
          initialIndex: weight.toDouble(),
          onItemFocus: (int value) {
            setState(() {
              weight = value;
            });
          },
        ),
      ),
    );
  }
}
