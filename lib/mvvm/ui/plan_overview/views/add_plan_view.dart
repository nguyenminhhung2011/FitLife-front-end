import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/extensions/date_time_extension.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/custom_input_label_field.dart';
import 'package:fit_life/core/components/widgets/range_date_picker_custom.dart';
import 'package:flutter/material.dart';

class AddPlanView extends StatefulWidget {
  const AddPlanView({super.key});

  @override
  State<AddPlanView> createState() => _AddPlanViewState();
}

class _AddPlanViewState extends State<AddPlanView> {
  final RangeDateController rangeDateController = RangeDateController();
  final TextEditingController titleCtrl = TextEditingController();
  final TextEditingController goalCtrl = TextEditingController();
  final TextEditingController levelCtrl = TextEditingController();
  final TextEditingController preferencesCtrl = TextEditingController();
  bool isUsingAIGenerate = false;

  DateTime _selectedStartDate =
      DateTime.now().subtract(const Duration(days: 10));
  DateTime _selectedEndDate = DateTime.now();

  @override
  void dispose() {
    titleCtrl.dispose();
    rangeDateController.dispose();
    goalCtrl.dispose();
    levelCtrl.dispose();
    preferencesCtrl.dispose();
    super.dispose();
  }

  void onDateRangePickerTap() {
    final year = DateTime.now().year;

    showDateRangePicker(
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      context: context,
      firstDate: DateTime(year - 5),
      lastDate: DateTime(year + 5),
      initialDateRange: DateTimeRange(
        start: _selectedStartDate,
        end: _selectedEndDate,
      ),
      builder: (_, child) {
        return DatePickerTheme(
          data: DatePickerThemeData(
            dayBackgroundColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: context.widthDevice * 0.9,
                maxHeight: context.heightDevice * 0.7,
              ),
              child: child,
            ),
          ),
        );
      },
    ).then((selectedRangeDate) {
      setState(() {
        _selectedStartDate = selectedRangeDate?.start ?? _selectedStartDate;
        _selectedEndDate = selectedRangeDate?.end ?? _selectedEndDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add plan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              CustomInputLabelField(
                label: 'Title',
                controller: titleCtrl,
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Time range",
                  style: context.textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: onDateRangePickerTap,
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
                      Text(
                          '${_selectedStartDate.toDDMMYYYY()} - ${_selectedEndDate.toDDMMYYYY()}'),
                      const Icon(Icons.calendar_month),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Use AI to generate the fitness planning",
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Switch(
                    value: isUsingAIGenerate,
                    onChanged: (value) {
                      setState(() {
                        isUsingAIGenerate = value;
                      });
                    },
                  )
                ],
              ),
              if (isUsingAIGenerate) ...[
                const SizedBox(height: 10),
                CustomInputLabelField(
                  label: 'Your fitness goal: ',
                  controller: goalCtrl,
                ),
                const SizedBox(height: 10),
                CustomInputLabelField(
                  label: 'Current fitness level: ',
                  controller: levelCtrl,
                ),
                const SizedBox(height: 10),
                CustomInputLabelField(
                  label: 'Your preferences: ',
                  controller: preferencesCtrl,
                ),
                const SizedBox(height: 10),
              ],
              const SizedBox(height: 20),
              ButtonCustom(
                height: 50,
                onPress: () {},
                child: Text(isUsingAIGenerate ? "Generate" : "Create"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
