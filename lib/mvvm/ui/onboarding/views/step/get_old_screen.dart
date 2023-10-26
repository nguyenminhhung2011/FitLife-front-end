import 'package:flutter/cupertino.dart';
import 'package:flutter_base_clean_architecture/generated/l10n.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/onboarding/views/widgets/onboarding_step_layout.dart';

class GetOldStep extends StatefulWidget {
  const GetOldStep({super.key});

  @override
  State<GetOldStep> createState() => _GetOldStepState();
}

class _GetOldStepState extends State<GetOldStep> {
  DateTime? timePicker;
  @override
  Widget build(BuildContext context) {
    return OnboardingStepLayout(
      title: S.of(context).howOldAreYou,
      description: S.of(context).oldDescription,
      child: Column(
        children: [
          Center(
            child: SizedBox(
              height: 250,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                minimumYear: DateTime.now().year - 100,
                maximumYear: DateTime.now().year + 100,
                onDateTimeChanged: (value) {
                  timePicker = value;
                },
                initialDateTime: DateTime(1990, 1, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
