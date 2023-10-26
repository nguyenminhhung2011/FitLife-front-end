import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/generated/l10n.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/onboarding/views/widgets/onboarding_step_layout.dart';

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
      S.of(context).notMuch,
      S.of(context).aLittle,
      S.of(context).medium,
      S.of(context).many,
      S.of(context).soMany,
    ];
    final frequencyList = [
      S.of(context).notMuchOrMore,
      S.of(context).twoToThereDaysInWeek,
      S.of(context).three2FiveDaysInWeek,
      S.of(context).six2SevenMuchOrMore,
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
              color: Colors.grey,
            ),
            color: !isSelected
                ? Colors.transparent
                : Theme.of(context).primaryColor.withOpacity(0.4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                duration,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                frequency,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ));
  }
}
