import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/custom_input_label_field.dart';
import 'package:fit_life/mvvm/me/entity/daily_workout/daily_workout_dto.dart';
import 'package:fit_life/mvvm/ui/plan_detail/ob/add_actions.dart';
import 'package:fit_life/mvvm/ui/plan_detail/view_model/plan_detail_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class AddDailyWorkoutView extends ConsumerStatefulWidget {
  const AddDailyWorkoutView({super.key});

  @override
  ConsumerState<AddDailyWorkoutView> createState() =>
      _AddDailyWorkoutViewState();
}

class _AddDailyWorkoutViewState extends ConsumerState<AddDailyWorkoutView> {
  late String workoutDuration;
  late String numOfRound;
  late String exercisePerRound;
  late String breakTime;
  late String timeForEachExers;
  late TextEditingController descriptionCtrl;
  late TextEditingController titleCtrl;
  late TextEditingController targetCaloriesCtrl;

  PlanDetailViewModel get viewModel =>
      ref.read(planDetailStateNotifier.notifier);

  DateTime startDate = DateTime(2023, 1, 7);
  DateTime endDate = DateTime(2023, 1, 10);
  DateTime date = DateTime.now();

  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  @override
  void initState() {
    descriptionCtrl = TextEditingController();
    titleCtrl = TextEditingController();
    workoutDuration = workoutDurations[0];
    numOfRound = numRounds[0];
    exercisePerRound = exercisePerRounds[0];
    breakTime = breakTimes[0];
    timeForEachExers = timeForEachExs[0];
    targetCaloriesCtrl = TextEditingController(text: "200");
    super.initState();
  }

  @override
  void dispose() {
    descriptionCtrl.dispose();
    titleCtrl.dispose();
    targetCaloriesCtrl.dispose();
    super.dispose();
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

  void onTapSave() async {
    context.popArgs(
      DailyWorkoutDTO(
        name: titleCtrl.text,
        description: descriptionCtrl.text,
        workoutDuration: int.parse(workoutDuration),
        numberRound: int.parse(numOfRound),
        execPerRound: int.parse(exercisePerRound),
        breakTime: int.parse(breakTime),
        timeForEachExe: int.parse(timeForEachExers),
        caloTarget: double.parse(targetCaloriesCtrl.text),
        time: date.millisecondsSinceEpoch,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        elevation: 0,
        title: Text(
          "Create daily plan",
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
              CustomInputLabelField(
                label: 'Title',
                controller: titleCtrl,
                hintText: "Ex. Upper body",
              ),
              const SizedBox(height: 10),
              CustomInputLabelField(
                label: 'Description',
                controller: descriptionCtrl,
                hintText: "Ex. Upper body workout",
              ),
              const SizedBox(height: 10),
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
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
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
                  "Settings",
                  style: context.textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 10),
              _customInputValueWidget(
                title: "Target calories",
                icon: const Icon(Icons.golf_course_sharp),
                controller: targetCaloriesCtrl,
              ),
              const SizedBox(height: 10),
              ...AddActions.values
                  .map(
                    (e) => _dropdownListWidget(
                        listItem: e.data,
                        title: e.title,
                        itemChoice: e == AddActions.workoutDuration
                            ? workoutDuration
                            : e == AddActions.numOfRound
                                ? numOfRound
                                : e == AddActions.exerPerRound
                                    ? exercisePerRound
                                    : e == AddActions.breakTime
                                        ? breakTime
                                        : timeForEachExers,
                        icon: Icon(e.icon),
                        onChange: (newValue) {
                          setState(() {
                            if (e == AddActions.workoutDuration) {
                              workoutDuration = newValue!;
                            } else if (e == AddActions.numOfRound) {
                              numOfRound = newValue!;
                            } else if (e == AddActions.exerPerRound) {
                              exercisePerRound = newValue!;
                            } else if (e == AddActions.breakTime) {
                              breakTime = newValue!;
                            } else if (e == AddActions.timeForEachExer) {
                              timeForEachExers = newValue!;
                            }
                          });
                        }),
                  )
                  .expand((e) => [e, const SizedBox(height: 10.0)]),
              const SizedBox(height: 20),
              ButtonCustom(
                onPress: onTapSave,
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

  Widget _customInputValueWidget({
    Widget? icon,
    required String title,
    required TextEditingController controller,
    Function(String?)? onChange,
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
            height: 40,
            width: 150,
            child: Center(
              child: TextField(
                keyboardType: TextInputType.number,
                controller: controller,
                textAlign: TextAlign.right,
                onChanged: onChange,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "200",
                  suffixText: '  Calories',
                  suffixStyle: context.textTheme.bodyMedium,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
