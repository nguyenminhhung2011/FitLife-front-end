import 'package:flutter/material.dart';

const timePerLessions = [
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
const transferTimes = ['10', '15', '20', '25', '30', '35', '40', '45'];
const breakTimes = ['10', '15', '20', '25', '30', '35', '40', '45'];
const calcTargets = ['10', '15', '20', '25', '30', '35', '40', '45'];
const levels = ["Beginner", "Intermediate", "Advanced"];
const reps = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
const weights = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  "11",
  "12",
  "13",
  "14",
  "15",
  "16",
  "17",
  "18",
  "19",
  "20"
];

enum AddActions {
  calcTarget("calcTarget", Icons.track_changes_outlined, calcTargets),
  timePerLession("Time per lession", Icons.timelapse_rounded, timePerLessions),
  numOfRound("Number round", Icons.timeline_sharp, numRounds),
  transferTime("Transfer time", Icons.transfer_within_a_station, transferTimes),
  breakTime("Break time (s)", Icons.free_breakfast_sharp, breakTimes),
  level("Level", Icons.upgrade_sharp, levels),
  ;

  final String title;
  final IconData icon;
  final List<String> data;
  const AddActions(this.title, this.icon, this.data);
}
