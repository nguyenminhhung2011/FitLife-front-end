import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/mvvm/ui/plan_detail/ob/add_actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddNewExerciseView extends StatefulWidget {
  const AddNewExerciseView({super.key});

  @override
  State<AddNewExerciseView> createState() => _AddNewExerciseViewState();
}

class _AddNewExerciseViewState extends State<AddNewExerciseView> {
  late String difficultyValue;
  late String exercise;
  late String duration;
  late String weight;

  DateTime startDate = DateTime(2023, 1, 7);
  DateTime endDate = DateTime(2023, 1, 10);
  DateTime date = DateTime.now();

  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

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
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        elevation: 0,
        title: Text(
          "Add new exercise",
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back, color: context.titleLarge.color),
        ),
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
                    borderRadius: BorderRadius.circular(10),
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
              _cupertinoIcons(context),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Detail workouts",
                  style: context.textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 10),
              ...[
                AddActions.chooseExercise,
                AddActions.difficulty,
                AddActions.customReputation,
                AddActions.customWeights
              ]
                  .map(
                    (e) => _dropdownListWidget(
                        listItem: e.renderMapperData,
                        title: e.renderText,
                        itemChoice: switch (e) {
                          AddActions.chooseExercise => exercise,
                          AddActions.difficulty => difficultyValue,
                          AddActions.customReputation => duration,
                          _ => weight
                        },
                        icon: Icon(e.renderIcon),
                        onChange: (newValue) {
                          if (e.isChooseExercise) {
                            setState(() {
                              exercise = newValue ?? exercises.first;
                            });
                          } else if (e.isCustomReputation) {
                            setState(() {
                              duration = newValue ?? durations.first;
                            });
                          } else if (e.isDifficulty) {
                            setState(() {
                              difficultyValue = newValue ?? difficulty.first;
                            });
                          } else {
                            setState(() {
                              weight = newValue ?? weights.first;
                            });
                          }
                        }),
                  )
                  .expand((e) => [e, const SizedBox(height: 10.0)]),
              const SizedBox(height: 20),
              ButtonCustom(
                onPress: () {},
                height: 45.0,
                child: Text(
                  "Save",
                  style: context.titleMedium.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _cupertinoIcons(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: context.heightDevice * 0.2,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.time,
        onDateTimeChanged: (value) {
          date = DateTime(date.year, date.month, date.day, value.hour,
              value.minute, value.second);
        },
        initialDateTime: DateTime.now(),
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
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).dividerColor.withOpacity(0.1),
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
