import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddNewExerciseView extends StatefulWidget {
  const AddNewExerciseView({super.key});

  @override
  State<AddNewExerciseView> createState() => _AddNewExerciseViewState();
}

class _AddNewExerciseViewState extends State<AddNewExerciseView> {
  List<String> exercises = [
    'Squats',
    'Deadlifts',
    'Planks',
    'benchPress',
    'Treadmill Running',
    'Leg Raises',
  ];
  List<String> difficulty = [
    'Beginner',
    'Intermediate',
    'Advance',
  ];
  List<String> durations = [
    '10',
    '15',
    '20',
    '25',
    '30',
    '35',
    '40',
    '45',
  ];
  List<String> weights = [
    '10',
    '15',
    '20',
    '25',
    '30',
    '35',
    '40',
    '45',
  ];

  late String difficultyValue;
  late String exercise;
  late String duration;
  late String weight;
  DateTime startDate = DateTime(2023, 1, 7);
  DateTime endDate = DateTime(2023, 1, 10);

  DateTime date = DateTime.now();
  @override
  void initState() {
    difficultyValue = difficulty[0];
    exercise = exercises[0];
    duration = durations[0];
    weight = weights[0];
    super.initState();
  }

  void onTapChangeDateTime() async {
    final now = DateTime.now();
    final DateTime? value = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(now.year - 100),
      lastDate: DateTime(now.year + 100),
    );
    if (value != null) {
      setState(() {
        date = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new exercise"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Time",
                  style: context.textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: onTapChangeDateTime,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: context.textColor!.withOpacity(0.6)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(DateFormat("dd/MM/yyyy").format(date)),
                      const Icon(Icons.calendar_month),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: context.heightDevice * 0.2,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.time,
                  onDateTimeChanged: (value) {
                    date = DateTime(
                      date.year,
                      date.month,
                      date.day,
                      value.hour,
                      value.minute,
                      value.second,
                    );
                  },
                  initialDateTime: DateTime.now(),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Detail workouts",
                  style: context.textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 10),
              _dropdownListWidget(
                icon: const Icon(Icons.line_weight),
                title: "Choose exercise",
                listItem: exercises,
                itemChoice: exercise,
                onChange: (newValue) {
                  setState(() {
                    exercise = newValue!;
                  });
                },
              ),
              const SizedBox(height: 10),
              _dropdownListWidget(
                icon: const Icon(Icons.change_circle_outlined),
                title: "Difficulty",
                listItem: difficulty,
                itemChoice: difficultyValue,
                onChange: (newValue) {
                  setState(() {
                    difficultyValue = newValue!;
                  });
                },
              ),
              const SizedBox(height: 10),
              _dropdownListWidget(
                icon: const Icon(Icons.repeat),
                title: "Custom Repeatation",
                listItem: durations,
                itemChoice: duration,
                onChange: (newValue) {
                  setState(() {
                    duration = newValue!;
                  });
                },
              ),
              const SizedBox(height: 10),
              _dropdownListWidget(
                icon: const Icon(Icons.scale),
                title: "Custom Weights",
                listItem: weights,
                itemChoice: weight,
                onChange: (newValue) {
                  setState(() {
                    weight = newValue!;
                  });
                },
              ),
              const SizedBox(height: 20),
              ButtonCustom(child: Text("Save"), onPress: () {})
            ],
          ),
        ),
      ),
    );
  }

  Widget _dropdownListWidget({
    Widget? icon,
    required List<String>? listItem,
    required String title,
    Function(String?)? onChange,
    required String itemChoice,
  }) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: context.textColor?.withOpacity(0.1),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          if (icon != null) icon,
          const SizedBox(width: 10),
          Expanded(
            child: Text(title, style: context.textTheme.bodyLarge),
          ),
          Container(
            padding: const EdgeInsets.only(right: 10),
            height: 30,
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(15),
              value: itemChoice,
              elevation: 5,
              icon: const Icon(Icons.arrow_drop_down),
              items: listItem
                  ?.map(
                    (e) => DropdownMenuItem<String>(
                      value: e,
                      child: Text(
                        e,
                        style: context.textTheme.bodyMedium,
                      ),
                    ),
                  )
                  .toList(),
              onChanged: onChange,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
