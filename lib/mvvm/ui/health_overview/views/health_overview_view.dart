import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/ui/health_overview/ob/health_overview_row.dart';
import 'package:fit_life/mvvm/ui/health_overview/view_model/health_overview_data.dart';
import 'package:fit_life/mvvm/ui/health_overview/view_model/health_overview_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HealthOverviewView extends ConsumerStatefulWidget {
  const HealthOverviewView({super.key});

  @override
  ConsumerState<HealthOverviewView> createState() => _HealthOverviewViewState();
}

class _HealthOverviewViewState extends ConsumerState<HealthOverviewView> {
  Color get _backgroundColor => Theme.of(context).scaffoldBackgroundColor;

  HealthOverviewViewModel get _vm =>
      ref.read(healthOverviewStateNotifier.notifier);

  HealthOverviewData get _data => ref.watch(healthOverviewStateNotifier).data;

  int weight = 10;
  int height = 177;
  int targetWeight = 10;
  bool isMale = true;
  int duration = 0;

  EdgeInsets get _padding => const EdgeInsets.symmetric(horizontal: 15.0);

  void _showBottom({required HealthOverviewRow type}) async {
    final show = await context.bottomEditInformation(type: type);
    if (show != null) {
      if (type.isGender && show is bool) {
        setState(() {
          isMale = show;
        });
      } else if (type.isDuration && show is int) {
        setState(() {
          duration = show;
        });
      } else if (type.isHeight && show is int) {
        setState(() {
          height = show;
        });
      } else if (type.isWeight && show is int) {
        setState(() {
          weight = show;
        });
      } else {
        setState(() {
          targetWeight = show;
        });
      }
    }
  }

  void _listener(HealthOverviewState state) {
    state.maybeWhen(
        updateInformationSuccess: (_) =>
            context.showSnackBar("✅ Update user profile success"),
        updateInformationFailed: (_, message) =>
            context.showSnackBar("🐛Get error: $message"),
        orElse: () {});
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(healthOverviewStateNotifier,
        (_, HealthOverviewState state) => _listener(state));

    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ButtonCustom(
          height: 45.0,
          radius: 5.0,
          child: Text(
            "Update information",
            style: context.titleMedium
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          onPress: () {
            _vm.updateUserProfile(HealthOverviewData(
              duration: duration,
              height: height,
              isMale: isMale,
              targetWeight: targetWeight,
              weight: weight,
            ));
          },
        ),
      ),
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back, color: context.titleLarge.color),
        ),
        title: Text(
          "Health overview",
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  ImageConst.banner1,
                  width: 75.0,
                  height: 75.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 15.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nguyen Minh Hung",
                      style: context.titleMedium
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    ...['join at ${getYmdFormat(DateTime.now())}', '0935703991']
                        .map(
                      (e) => Text(
                        e,
                        style: context.titleSmall.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                    ),
                  ].expand((e) => [e, const SizedBox(height: 2.0)]).toList()
                    ..removeLast(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5.0),
          const Divider(),
          const SizedBox(height: 5.0),
          ...[
            HealthOverviewRow.weight,
            HealthOverviewRow.height,
            HealthOverviewRow.gender,
            HealthOverviewRow.duration,
            HealthOverviewRow.targetWeight
          ].map(
            (e) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  e.renderText,
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 5.0),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        width: 1, color: Theme.of(context).dividerColor),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        switch (e) {
                          HealthOverviewRow.weight => "$weight kg",
                          HealthOverviewRow.height => "$height cm",
                          HealthOverviewRow.gender =>
                            isMale ? S.current.male : S.current.female,
                          HealthOverviewRow.targetWeight => "$targetWeight kg",
                          _ => Constant.durationList[duration],
                        },
                        style: context.titleSmall,
                      )),
                      IconButton(
                        onPressed: () => _showBottom(type: e),
                        icon: Icon(e.renderIcon,
                            color: Theme.of(context).primaryColor),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          )
        ].expand((e) => [Padding(padding: _padding, child: e)]).toList(),
      ),
    );
  }
}
