import 'package:flutter/material.dart';

const workoutDurations = [
  '10',
  '15',
  '20',
  '25',
  '30',
  '35',
  '40',
  '45',
  '50',
  '55',
  '60',
];
const numRounds = ['1', '2', '3', '4', '5', '6', '7', '8'];
const exercisePerRounds = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
const timeForEachExs = ['10', '15', '20', '25', '30', '35', '40', '45'];
const breakTimes = ['10', '15', '20', '25', '30', '35', '40', '45'];

enum AddActions {
  workoutDuration("Workout Duration", Icons.loop, workoutDurations),
  numOfRound("Number round", Icons.loop, numRounds),
  exerPerRound("Exercise per round", Icons.explore_rounded, exercisePerRounds),
  timeForEachExer(
      "Custom weights (kg)", Icons.hourglass_bottom, timeForEachExs),
  breakTime("Break time (s)", Icons.free_breakfast_sharp, breakTimes),
  ;

  final String title;
  final IconData icon;
  final List<String> data;
  const AddActions(this.title, this.icon, this.data);
}
