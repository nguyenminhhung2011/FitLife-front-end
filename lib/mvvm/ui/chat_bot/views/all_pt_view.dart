import 'package:easy_debounce/easy_debounce.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/mvvm/ui/auth/mixins/auth_mixin.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/widgets/pt_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllPtView extends StatefulWidget {
  const AllPtView({super.key});

  @override
  State<AllPtView> createState() => _AllPtViewState();
}

class _AllPtViewState extends State<AllPtView> with AuthMixin {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxHeight: context.heightDevice * 0.9,
        minHeight: context.heightDevice * 0.9,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15.0),
            const DividerDot(),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Pt ChatThread bot",
                textAlign: TextAlign.start,
                style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Choose ChatBot pt for you",
                style: context.titleMedium.copyWith(
                  color: Theme.of(context).hintColor,
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: _searchBox(),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              width: double.infinity,
              height: 35.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 15.0),
                  ...["Yoga", "Upper body", "Workout", "Downer body"]
                      .map(
                        (e) => Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                                width: 1,
                                color: Theme.of(context).primaryColor),
                          ),
                          child: Center(
                            child:
                                Text(e, style: context.titleSmall.copyWith()),
                          ),
                        ),
                      )
                      .expand((e) => [e, const SizedBox(width: 10.0)])
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (_, __) => const Divider(),
                itemCount: 10,
                itemBuilder: (_, index) => const PtItemView(),
                // ListTile(
              ),
            ),
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
              SvgPicture.asset(
                ImageConst.searchIcon,
                width: 22,
                height: 22,
                // ignore: deprecated_member_use
                color: context.titleLarge.color,
              ),
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
      onChanged: (text) {
        EasyDebounce.debounce(
          'search exercise',
          const Duration(milliseconds: 500),
          () {},
        );
      },
      textInputAction: TextInputAction.next,
      onSubmitted: (_) {},
    );
  }
}
