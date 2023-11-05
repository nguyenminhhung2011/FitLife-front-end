import 'package:fit_life/core/components/layout/setting_layout/views/widgets/bottom_change_paassword.dart';
import 'package:fit_life/mvvm/ui/health_overview/ob/health_overview_row.dart';
import 'package:fit_life/mvvm/ui/health_overview/views/bottom_edit_infor.dart';
import 'package:fit_life/mvvm/ui/plan_overview/views/view_more_plan.dart';
import 'package:fit_life/mvvm/ui/wo_trac/views/relax_view.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/widgets/bottom_selected_prompt.dart';

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
        style: titleSmall.copyWith(
            fontWeight: FontWeight.w500, color: Colors.white),
      ),
      backgroundColor: Theme.of(this).primaryColor,
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

  Future<bool> bottomRelax() async {
    final data = await showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(14.0)),
      ),
      backgroundColor: Theme.of(this).scaffoldBackgroundColor,
      builder: (context) {
        return const RelaxView();
      },
    );
    return (data ?? false);
  }

  Future<T?> showChangePassword() {
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
        return const ViewMorePlan();
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
