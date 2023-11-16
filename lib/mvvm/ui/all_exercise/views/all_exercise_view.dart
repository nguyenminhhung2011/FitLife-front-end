import 'package:easy_debounce/easy_debounce.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/pagination_view/default_pagination.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/pagination/pagination.dart';
import 'package:fit_life/mvvm/ui/all_exercise/view_model/all_exercise_data.dart';
import 'package:fit_life/mvvm/ui/all_exercise/view_model/all_exercise_view_model.dart';
import 'package:fit_life/mvvm/ui/auth/mixins/auth_mixin.dart';
import 'package:fit_life/core/components/widgets/fit_life/exercise_child_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class AllExerCiseView extends ConsumerStatefulWidget {
  const AllExerCiseView({super.key});

  @override
  ConsumerState<AllExerCiseView> createState() => _AllExerCiseViewState();
}

class _AllExerCiseViewState extends ConsumerState<AllExerCiseView>
    with AuthMixin {
  AllExerciseViewModel get _vm => ref.read(allExerciseStateNotifier.notifier);

  AllExerciseData get _data => ref.watch(allExerciseStateNotifier).data;

  AllExerciseState get _state => ref.watch(allExerciseStateNotifier);

  Pagination<Exercise> get _items => _data.exercises;

  final _searchController = TextEditingController();

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      _vm.getExercise(content: "");
    });
    super.initState();
  }

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
          "🌟 ${_vm.categoryId}",
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
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: _searchBox(),
          ),
          const SizedBox(height: 15.0),
          Expanded(
            child: DefaultPagination<Exercise>(
              items: _items.items,
              loading: _state.loading,
              itemBuilder: (_, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ExerciseChidItem(
                  exercise: _items.items[index],
                ),
              ),
              listenScrollBottom: () =>
                  _vm.getExercise(content: _searchController.text),
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
      onChanged: (text) {
        EasyDebounce.debounce(
          'search exercise',
          const Duration(milliseconds: 500),
          () => _vm.getExercise(content: text),
        );
      },
      textInputAction: TextInputAction.next,
      onSubmitted: (_) {},
    );
  }
}
