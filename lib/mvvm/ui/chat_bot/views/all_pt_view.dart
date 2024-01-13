import 'package:easy_debounce/easy_debounce.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/core/components/widgets/pagination_view/default_pagination.dart';
import 'package:fit_life/mvvm/object/entity/trainer/trainer.dart';
import 'package:fit_life/mvvm/ui/auth/mixins/auth_mixin.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/all_pt/all_pt_data.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/all_pt/all_pt_view_model.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/widgets/pt_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class AllPtView extends ConsumerStatefulWidget {
  const AllPtView({super.key});

  @override
  ConsumerState<AllPtView> createState() => _AllPtViewState();
}

class _AllPtViewState extends ConsumerState<AllPtView> with AuthMixin {
  final _searchController = TextEditingController();

  AllPtViewModel get _vm => ref.read(allPtStateNotifier.notifier);

  AllPtState get _state => ref.watch(allPtStateNotifier);

  AllPtData get _data => _state.data;

  List<Trainer> get _trainers => _data.trainers;

  String get _trainerType => _data.trainerType ?? "";

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await _vm.getAllTrainers();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxHeight: context.heightDevice * 0.9,
        minHeight: context.heightDevice * 0.9,
      ),
      child: _body(context),
    );
  }

  Scaffold _body(BuildContext context) {
    return Scaffold(
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
                ...["Yoga", "Upper body", "Workout", "Downer body"].map((e) {
                  final (
                    groundColor,
                    textColor
                  ) = (e.toLowerCase() == _trainerType.toLowerCase())
                      ? (Theme.of(context).primaryColor, Colors.white)
                      : (Colors.transparent, Theme.of(context).primaryColor);
                  return GestureDetector(
                    onTap: () => _vm.changeTrainerType(e.toLowerCase()),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            width: 1, color: Theme.of(context).primaryColor),
                        color: groundColor,
                      ),
                      child: Center(
                        child: Text(
                          e,
                          style: context.titleSmall.copyWith(color: textColor),
                        ),
                      ),
                    ),
                  );
                }).expand((e) => [e, const SizedBox(width: 10.0)])
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: DefaultPagination(
              items: _trainers,
              loading: _state.loading,
              itemBuilder: (_, index) => const PtItemView(),
              listenScrollBottom: () async {},
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
