import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/core/components/widgets/fit_life/workout_plan_item.dart';
import 'package:fit_life/mvvm/ui/auth/mixins/auth_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ViewMorePlan extends StatefulWidget {
  const ViewMorePlan({super.key});

  @override
  State<ViewMorePlan> createState() => _ViewMorePlanState();
}

class _ViewMorePlanState extends State<ViewMorePlan> with AuthMixin {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: context.heightDevice * .9,
        minHeight: context.heightDevice * .8,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15.0),
            const Align(
              alignment: Alignment.center,
              child: DividerDot(),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "All plan view",
                style:
                    context.titleMedium.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "You have 3 session plan (3 plans was completed)",
                style: context.titleSmall.copyWith(
                    color: Theme.of(context).hintColor, fontSize: 12.0),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: _searchBox(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Text(
                    getRangeDateFormat(DateTime.now(),
                        DateTime.now().add(const Duration(days: 1))),
                    style: context.titleSmall.copyWith(fontSize: 12.0),
                  )),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Selected time",
                      style: context.titleSmall.copyWith(
                          color: primaryColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const Divider(),
            const SizedBox(height: 5.0),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (_, __) => const WorkoutPlanItemWidget(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _searchBox() {
    return TextField(
      controller: _searchController,
      decoration: textFieldDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(ImageConst.searchIcon,
                  // ignore: deprecated_member_use
                  width: 22, height: 22, color: context.titleLarge.color),
            ],
          ),
        ),
        labelText: 'Search',
        errorText: null,
      ).copyWith(
        hintText: "Type search ....",
        hintStyle:
            context.titleSmall.copyWith(color: Theme.of(context).hintColor),
      ), // InputDecoration(
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      style: context.titleSmall,
      onChanged: (text) {},
      textInputAction: TextInputAction.next,
      onSubmitted: (_) {},
    );
  }
}
