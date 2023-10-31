import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/ui/onboarding/views/widgets/onboarding_step_layout.dart';

class SelectDurationScreen extends StatefulWidget {
  const SelectDurationScreen({super.key});

  @override
  State<SelectDurationScreen> createState() => _SelectDurationScreenState();
}

class _SelectDurationScreenState extends State<SelectDurationScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final durationList = [
      S.of(context).many,
      S.of(context).soMany,
      S.of(context).medium,
      S.of(context).aLittle,
      S.of(context).notMuch,
    ];

    final frequencyList = [
      S.of(context).notMuchOrMore,
      S.of(context).six2SevenMuchOrMore,
      S.of(context).three2FiveDaysInWeek,
      S.of(context).twoToThereDaysInWeek,
      S.of(context).worksEveryDayOfTheWeek,
    ];

    return OnboardingStepLayout(
      title: S.of(context).durationExercise,
      description: S.of(context).durationExerciseDesc,
      child: Column(
        children: List.generate(
          durationList.length,
          (index) => Column(
            children: [
              SelectDurationButton(
                isSelected: index == _index,
                duration: durationList[index],
                frequency: frequencyList[index],
                onTap: () {
                  setState(() {
                    _index = index;
                  });
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectDurationButton extends StatelessWidget {
  final bool isSelected;
  final String duration;
  final String frequency;
  final VoidCallback? onTap;

  const SelectDurationButton({
    Key? key,
    required this.isSelected,
    required this.duration,
    required this.frequency,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fontColor = isSelected ? Colors.white : context.titleLarge.color;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1.2,
            color: Theme.of(context).dividerColor,
          ),
          color: !isSelected
              ? Colors.transparent
              : Theme.of(context).primaryColor.withOpacity(0.8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              duration,
              style: context.titleLarge
                  .copyWith(fontWeight: FontWeight.w600, color: fontColor),
            ),
            Text(
              frequency,
              style: context.titleMedium.copyWith(color: fontColor),
            ),
          ],
        ),
      ),
    );
  }
}
