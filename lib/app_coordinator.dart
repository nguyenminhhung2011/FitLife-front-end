import 'package:fit_life/core/components/layout/setting_layout/views/widgets/bottom_change_paassword.dart';
import 'package:fit_life/core/components/widgets/fit_life/slide_change_value.dart';
import 'package:fit_life/mvvm/me/entity/session/setting_session.dart';
import 'package:fit_life/mvvm/me/model/user/change_password.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/all_pt_view.dart';
import 'package:fit_life/mvvm/ui/exercise_schedule/views/setting_exercise_bottom.dart';
import 'package:fit_life/mvvm/ui/health_overview/ob/health_overview_row.dart';
import 'package:fit_life/mvvm/ui/health_overview/views/bottom_edit_infor.dart';
import 'package:fit_life/mvvm/ui/plan_overview/views/view_more_plan.dart';
import 'package:fit_life/mvvm/ui/wo_trac/views/relax_view.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/widgets/bottom_selected_prompt.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/components/layout/setting_layout/views/language_choose.dart';
import 'core/components/widgets/range_date_picker_custom.dart';
import 'core/components/layout/search_layout/header_search/model_bottom_sheet.dart';
import 'core/components/layout/search_layout/model/filter_model.dart';
import 'core/components/layout/search_layout/model/filter_response.dart';

extension AppCoordinator<T> on BuildContext {
  void pop() => Navigator.of(this).pop();

  void popUntil(String nRoute) =>
      Navigator.popUntil(this, ModalRoute.withName(nRoute));
  void popArgs(T? args) => Navigator.of(this).pop(args);

  void showSnackBar(String title) {
    final snackBar = SnackBar(
      content: Text(
        title,
        style: titleSmall.copyWith(fontWeight: FontWeight.w500),
      ),
      backgroundColor: Theme.of(this).cardColor,
    );

    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  Future<DateTime?> pickDateTime() async {
    DateTime? date = (await pickDate(DatePickerMode.day));
    if (date == null) {
      return null;
    }
    TimeOfDay? time = await pickTime();
    if (time == null) {
      return null;
    }
    return date.copyWith(hour: time.hour, minute: time.minute);
  }

  Future<TimeOfDay?> pickTime() => showTimePicker(
        context: this,
        initialTime: TimeOfDay(
          hour: Constant.timeNow.hour,
          minute: Constant.timeNow.minute,
        ),
      );

  Future<DateTime?> pickDate(DatePickerMode mode) => showDatePicker(
        initialDatePickerMode: mode,
        context: this,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
      );
  Future<List<DateTime>?> pickRangeDate(
    RangeDateController rangeDateController,
  ) async {
    final dates = await showDialog(
      context: this,
      builder: (_) => Dialog(
        backgroundColor: Colors.transparent,
        child: RangeDatePicDialog(
          height: 450,
          rangeDateController: rangeDateController,
        ),
      ),
    );
    if (dates is List<DateTime>) {
      return dates;
    }
    return null;
  }

  Future<bool> showAlertDialog(
      {required String header, required String content}) async {
    Widget cancelButton = TextButton(
      child: Text("Cancel",
          style: titleMedium.copyWith(
              fontWeight: FontWeight.w500, color: Theme.of(this).primaryColor)),
      onPressed: () => this.popArgs(false),
    );
    Widget continueButton = TextButton(
      child: Text(
        "Continue",
        style: titleMedium.copyWith(
            fontWeight: FontWeight.w500, color: Theme.of(this).primaryColor),
      ),
      onPressed: () => this.popArgs(true),
    );
    final show = await showDialog(
      context: this,
      builder: (context) {
        return AlertDialog(
          title: Text(
            header,
            style: titleMedium.copyWith(fontWeight: FontWeight.bold),
          ),
          content: Text(content, style: titleSmall),
          actions: [
            cancelButton,
            continueButton,
          ],
        );
      },
    );
    if (show is bool) {
      return show;
    }
    return false;
  }

  Future<List<FilterResponse>> bottomFilter({
    required List<FilterModel> body,
    List<FilterResponse>? initData,
  }) async {
    final data = await showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
      ),
      backgroundColor: Theme.of(this).scaffoldBackgroundColor,
      builder: (context) {
        return ModelBottomSheet(
          listFilter: [...body],
          initResponse: initData ?? List<FilterResponse>.empty(),
        );
      },
    );
    if (data is List<FilterResponse>) {
      return data;
    }
    return List<FilterResponse>.empty();
  }

  Future<SettingSession?> settingExerciseBottom(
      SettingSession settingSession) async {
    final bottom = await showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(14.0)),
      ),
      backgroundColor: Theme.of(this).scaffoldBackgroundColor,
      builder: (context) {
        return SettingExerciseBottom(settingSession: settingSession);
      },
    );
    return bottom;
  }

  Future<dynamic> bottomEditInformation(
      {required HealthOverviewRow type}) async {
    final data = await showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(14.0)),
      ),
      backgroundColor: Theme.of(this).scaffoldBackgroundColor,
      builder: (_) => BottomEditInformation(type: type),
    );
    return data;
  }

  Future<bool> bottomRelax(int restTime,
      {required int current, required int total}) async {
    final data = await showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(14.0)),
      ),
      backgroundColor: Theme.of(this).scaffoldBackgroundColor,
      builder: (context) {
        return RelaxView(
            restTime: restTime, currentExercise: current, totalExercise: total);
      },
    );
    return (data ?? false);
  }

  Future<ChangePassword?> showChangePassword() {
    return showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(15.0),
      )),
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: const BottomChangePassword(),
        );
      },
    );
  }

  Future<double> showSliderChangeValue({
    required double initData,
    required double max,
    required String header,
  }) async {
    final show = await showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(15.0),
      )),
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SliderChangeValue(
              initValue: initData, maxValue: max, header: header),
        );
      },
    );
    if (show is double) {
      return show;
    }
    return -1;
  }

  Future<String> langBottom() async {
    final data = await showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
      ),
      backgroundColor: Theme.of(this).scaffoldBackgroundColor,
      builder: (context) {
        return const LangCodeShows();
      },
    );
    if (data is String) {
      return data;
    }
    return '';
  }

  Future<String> selectedPrompt() async {
    final data = await showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
      ),
      backgroundColor: Theme.of(this).scaffoldBackgroundColor,
      builder: (context) {
        return const BottomSelectedPrompt();
      },
    );
    if (data is String) {
      return data;
    }
    return '';
  }

  Future<String> selectChatPt() async {
    final data = await showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
      ),
      backgroundColor: Theme.of(this).scaffoldBackgroundColor,
      builder: (context) {
        return const AllPtView();
      },
    );
    if (data is String) {
      return data;
    }
    return "";
  }

  Future<List<DateTime>?> pickWeekRange(
    RangeDateController rangeDateController,
  ) async {
    final dates = await showDialog(
      context: this,
      builder: (_) => Dialog(
        backgroundColor: Colors.transparent,
        child: RangeDatePicDialog(
          height: 450,
          rangeDateController: rangeDateController,
          rangeDatePicType: RangeDatePicType.weekRange,
        ),
      ),
    );
    if (dates is List<DateTime>) {
      return dates;
    }
    return null;
  }

  Future<T?> openViewMorePlan() async {
    return await showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
      ),
      backgroundColor: Theme.of(this).scaffoldBackgroundColor,
      builder: (context) {
        return const ProviderScope(child: ViewMorePlan());
      },
    );
  }

  Future<T?> openListPageWithRoute(String route) {
    return Navigator.of(this).pushNamed(route);
  }

  Future<T?> pushAndRemoveAll(String route) {
    return Navigator.of(this).pushNamedAndRemoveUntil(route, (route) => false);
  }

  Future<T?> openPageWithRouteAndParams(String route, dynamic param) {
    return Navigator.of(this).pushNamed(route, arguments: param);
  }
}
