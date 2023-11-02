import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum HealthOverviewRow { weight, height, gender, duration, targetWeight }

extension HealthOverviewRowExtension on HealthOverviewRow {
  String get renderText => switch (this) {
        HealthOverviewRow.weight => "Weight",
        HealthOverviewRow.height => "Height",
        HealthOverviewRow.gender => "Gender",
        HealthOverviewRow.duration => "Duration",
        _ => "Target weight"
      };

  IconData get renderIcon => switch (this) {
        HealthOverviewRow.weight => Icons.line_weight,
        HealthOverviewRow.height => Icons.height,
        HealthOverviewRow.gender => CupertinoIcons.person_2_alt,
        HealthOverviewRow.duration => Icons.timelapse_sharp,
        _ => CupertinoIcons.chart_bar_fill,
      };

  bool get isWeight => this == HealthOverviewRow.weight;
  bool get isHeight => this == HealthOverviewRow.height;
  bool get isGender => this == HealthOverviewRow.gender;
  bool get isDuration => this == HealthOverviewRow.duration;
}
