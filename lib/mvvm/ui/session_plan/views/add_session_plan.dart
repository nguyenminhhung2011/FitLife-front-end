import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/custom_input_label_field.dart';
import 'package:fit_life/core/components/widgets/dropdown_list_row.dart';
import 'package:fit_life/core/components/widgets/toggle_row.dart';
import 'package:fit_life/mvvm/object/entity/session/add_session_dto.dart';
import 'package:fit_life/mvvm/ui/plan_detail/ob/add_actions.dart';
import 'package:fit_life/mvvm/ui/session_plan/ob/level.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddSessionPlan extends ConsumerStatefulWidget {
  final int id;
  const AddSessionPlan({super.key, required this.id});

  @override
  ConsumerState<AddSessionPlan> createState() => _AddSessionPlanState();
}

class _AddSessionPlanState extends ConsumerState<AddSessionPlan> {
  late String calcTarget;
  late String timePerLession;
  late String numOfRound;
  late String breakTime;
  late String transferTime;
  late String level;

  bool startWithBoot = false;
  bool randomMix = false;

  final TextEditingController titleCtrl = TextEditingController();
  final TextEditingController descriptionCtrl = TextEditingController();

  DateTime startDate = DateTime(2023, 1, 7);
  DateTime endDate = DateTime(2023, 1, 10);
  DateTime date = DateTime.now();

  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  @override
  void initState() {
    calcTarget = calcTargets[0];
    timePerLession = timePerLesson[0];
    numOfRound = numRounds[0];
    breakTime = breakTimes[0];
    transferTime = transferTimes[0];
    level = Level.beginner.renderString;

    super.initState();
  }

  @override
  void dispose() {
    titleCtrl.dispose();
    descriptionCtrl.dispose();
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
      AddSessionDTO(
        calcTarget: int.parse(calcTarget),
        timePerLesson: int.parse(timePerLession),
        numberRound: int.parse(numOfRound),
        breakTime: int.parse(breakTime),
        transferTime: int.parse(transferTime),
        level: level,
        startWithBoot: startWithBoot,
        randomMix: randomMix,
        dailyWorkouts: widget.id,
        description: descriptionCtrl.text,
        name: titleCtrl.text,
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
          "Add session plan",
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
                hintText: "",
              ),
              const SizedBox(height: 10),
              CustomInputLabelField(
                label: 'Description',
                controller: descriptionCtrl,
                hintText: "",
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Settings",
                  style: context.textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 10),
              ToggleRowWidget(
                title: "Start with boot",
                value: startWithBoot,
                icon: const Icon(Icons.star_border_outlined),
                onChange: (newValue) {
                  setState(() {
                    startWithBoot = newValue!;
                  });
                },
              ),
              const SizedBox(height: 10),
              ToggleRowWidget(
                title: "Random mix",
                value: randomMix,
                icon: const Icon(Icons.sports_golf_rounded),
                onChange: (newValue) {
                  setState(() {
                    randomMix = newValue!;
                  });
                },
              ),
              const SizedBox(height: 10.0),
              ...AddActions.values
                  .map(
                    (e) => DropdownListRowWidget(
                        listItem: e.data,
                        title: e.title,
                        itemChoice: e == AddActions.calcTarget
                            ? calcTarget
                            : e == AddActions.timePerLession
                                ? timePerLession
                                : e == AddActions.numOfRound
                                    ? numOfRound
                                    : e == AddActions.transferTime
                                        ? transferTime
                                        : e == AddActions.breakTime
                                            ? breakTime
                                            : level,
                        icon: Icon(e.icon),
                        onChange: (newValue) {
                          setState(() {
                            if (e == AddActions.calcTarget) {
                              calcTarget = newValue!;
                            } else if (e == AddActions.timePerLession) {
                              timePerLession = newValue!;
                            } else if (e == AddActions.numOfRound) {
                              numOfRound = newValue!;
                            } else if (e == AddActions.transferTime) {
                              transferTime = newValue!;
                            } else if (e == AddActions.breakTime) {
                              breakTime = newValue!;
                            } else if (e == AddActions.level) {
                              level = newValue!;
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
}
