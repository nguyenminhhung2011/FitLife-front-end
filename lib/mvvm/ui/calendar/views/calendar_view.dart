import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/extensions/date_time_extension.dart';
import 'package:fit_life/core/components/extensions/interger_extension.dart';
import 'package:fit_life/core/components/widgets/calendar_custom.dart';
import 'package:fit_life/mvvm/me/entity/daily_workout/daily_workout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarExerciseItem {
  final int timeStart;
  final int timeEnd;
  final String name;
  final int? time;
  CalendarExerciseItem({
    required this.timeStart,
    required this.timeEnd,
    required this.name,
    this.time,
  });
}

class CalendarView extends ConsumerStatefulWidget {
  final List<DailyWorkout>? dailyWorkouts;
  const CalendarView({
    super.key,
    this.dailyWorkouts,
  });

  @override
  ConsumerState<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends ConsumerState<CalendarView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  final calendarHeight = 23 * 80;
  late List<CalendarExerciseItem> textExercise;
  DateTime date = DateTime.now();

  @override
  void initState() {
    textExercise = List.generate(widget.dailyWorkouts?.length ?? 0, (index) {
      final item = widget.dailyWorkouts![index];
      final totalTimeExercise = (item.execPerRound != null &&
              item.numberRound != null &&
              item.timeForEachExe != null)
          ? item.execPerRound! * item.numberRound! * item.timeForEachExe! / 3600
          : 1;

      final startTime = DateTime.fromMillisecondsSinceEpoch(item.time!);
      return CalendarExerciseItem(
        timeStart: startTime.hour,
        timeEnd: (startTime.hour + totalTimeExercise).ceil(),
        name: item.name,
        time: item.time,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
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
            onSelectedDate: (value) {
              setState(() {
                date = value;
              });
            },
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
              final startDate = DateTime.fromMillisecondsSinceEpoch(e.time!);
              if (startDate.isSameDate(date) == false) return const SizedBox();

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
                      e.name,
                      style: context.titleMedium.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(height: 5.0),
                    if (e.time != null)
                      Text(
                        "📅 Start in ${getMMMMEEEd(DateTime.fromMillisecondsSinceEpoch(e.time!))}",
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
