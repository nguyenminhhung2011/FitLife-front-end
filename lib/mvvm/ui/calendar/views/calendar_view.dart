import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/extensions/interger_extension.dart';
import 'package:fit_life/core/components/widgets/calendar_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarExerciseItem {
  final int timeStart;
  final int timeEnd;
  CalendarExerciseItem({
    required this.timeStart,
    required this.timeEnd,
  });
}

class CalendarView extends ConsumerStatefulWidget {
  const CalendarView({super.key});

  @override
  ConsumerState<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends ConsumerState<CalendarView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  final calendarHeight = 23 * 80;

  final textExercise = [
    CalendarExerciseItem(timeStart: 0, timeEnd: 1),
    CalendarExerciseItem(timeStart: 6, timeEnd: 8),
    CalendarExerciseItem(timeStart: 15, timeEnd: 18),
    CalendarExerciseItem(timeStart: 20, timeEnd: 21),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: IconButton(
        icon: Icon(Icons.add_circle,
            color: Theme.of(context).primaryColor, size: 50.0),
        onPressed: () {},
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _backgroundColor,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back, color: context.titleLarge.color),
        ),
        title: Text(
          "Calendar",
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          CalendarCustom(
            type: CalendarType.timelineCalendar,
            headerText: "Daily workout",
            onSelectedDate: (_) {},
            style: CalenderStyleCustom(),
          ),
          const SizedBox(height: 5.0),
          const Divider(),
          const SizedBox(height: 5.0),
          _allExerciseField(),
        ],
      ),
    );
  }

  Expanded _allExerciseField() {
    return Expanded(
      child: ListView(
        children: [
          Row(
            children: [
              _timeField(),
              const SizedBox(width: 5.0),
              _exerciseField(),
              const SizedBox(width: 5.0),
            ],
          )
        ],
      ),
    );
  }

  Expanded _exerciseField() {
    return Expanded(
      flex: 5,
      child: SizedBox(
        width: double.infinity,
        height: calendarHeight.toDouble(),
        child: Column(
          children: [
            ...textExercise.mapIndexed((index, e) {
              final margin = (index == 0)
                  ? e.timeStart * 80
                  : (e.timeStart - (textExercise[index - 1].timeEnd)) * 80;
              return Container(
                margin: EdgeInsets.only(top: margin.toDouble()),
                height: (e.timeEnd - e.timeStart) * 80,
                padding: const EdgeInsets.all(10.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Russian resting",
                      style: context.titleMedium.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      "📅 Start in ${getMMMMEEEd(DateTime.now())}",
                      style: context.titleSmall
                          .copyWith(fontSize: 12.0, color: Colors.white),
                    )
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Expanded _timeField() {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        height: calendarHeight.toDouble(),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(width: 1, color: Theme.of(context).hintColor),
          ),
        ),
        child: Column(
          children: [for (int i = 0; i < 24; i++) _timeItem(i)],
        ),
      ),
    );
  }

  Expanded _timeItem(int i) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(
            "${i.renderTimeString}:00 - ${(i + 1).renderTimeString}:00",
            style: context.titleSmall.copyWith(fontSize: 12.0),
          ),
        ),
      ),
    );
  }
}
