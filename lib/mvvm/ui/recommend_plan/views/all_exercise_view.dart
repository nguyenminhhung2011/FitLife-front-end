import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/ui/auth/mixins/auth_mixin.dart';
import 'package:fit_life/mvvm/ui/recommend_plan/views/widgets/exercise_child_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExerCiseView extends StatefulWidget {
  const AllExerCiseView({super.key});

  @override
  State<AllExerCiseView> createState() => _AllExerCiseViewState();
}

class _AllExerCiseViewState extends State<AllExerCiseView> with AuthMixin {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back, color: context.titleLarge.color),
        ),
        title: Text(
          "🌟 Stretch",
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz, color: context.titleLarge.color),
          )
        ],
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: _searchBox(),
          ),
          const SizedBox(height: 15.0),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (_, __) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Divider(),
              ),
              itemCount: 10,
              itemBuilder: (_, __) => const ExerciseChidItem(),
            ),
          ),
        ],
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
                  width: 22,
                  height: 22,
                  color: context.titleLarge.color),
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
