import 'package:easy_debounce/easy_debounce.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/dropdown_list_row.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:fit_life/core/components/widgets/fit_life/equipment_horizontal_item.dart';
import 'package:fit_life/core/components/widgets/fit_life/exercise_child_item.dart';
import 'package:fit_life/core/components/widgets/pagination_view/default_pagination.dart';
import 'package:fit_life/mvvm/me/entity/exercise/add_exercise_dto.dart';
import 'package:fit_life/mvvm/me/entity/exercise/exercise.dart';
import 'package:fit_life/mvvm/me/entity/exercise_category/exercise_category.dart';
import 'package:fit_life/mvvm/me/entity/pagination/pagination.dart';
import 'package:fit_life/mvvm/ui/auth/mixins/auth_mixin.dart';
import 'package:fit_life/mvvm/ui/exercise_schedule/view_model/add_exercise/add_exercise_data.dart';
import 'package:fit_life/mvvm/ui/exercise_schedule/view_model/add_exercise/add_exercise_view_model.dart';
import 'package:fit_life/mvvm/ui/plan_detail/ob/add_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class AddExerciseBottom extends ConsumerStatefulWidget {
  const AddExerciseBottom({super.key});

  @override
  ConsumerState<AddExerciseBottom> createState() => _AddExerciseBottomState();
}

class _AddExerciseBottomState extends ConsumerState<AddExerciseBottom>
    with AuthMixin {
  final _searchController = TextEditingController();

  final PageController _pageController =
      PageController(initialPage: 0, keepPage: true);

  AddExerciseViewModel get _vm => ref.read(addExerciseStateNotifier.notifier);

  AddExerciseData get _data => ref.watch(addExerciseStateNotifier).data;

  AddExerciseState get _state => ref.watch(addExerciseStateNotifier);

  List<BodyPart> get _bodyPart => _data.bodyParts;

  Pagination<Exercise> get _items => _data.exercises;

  Exercise? get _chosenExercise => _data.exerciseChosen;

  String level = levels[0];
  String rep = reps[0];
  String weight = weights[0];
  String time = timePerLesson[0];
  bool loading = false;
  int exerciseSelectedIndex = 0;

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await _vm.getBodyPart();
      await _vm.searchExercise(content: "");
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _listenStateChange(AddExerciseState state) {
    state.maybeWhen(
      selectBodyPartSuccess: (_) async => await _vm.searchExercise(
          content: _searchController.text, newSearch: true),
      changeTabSuccess: (data) => _pageController.animateToPage(data.currentTab,
          duration: const Duration(milliseconds: 400), curve: Curves.linear),
      chooseExerciseSuccess: (data) => _vm.changeTab(0),
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(addExerciseStateNotifier, (_, next) => _listenStateChange(next));
    return SizedBox(
      height: context.heightDevice * 0.9,
      width: double.infinity,
      child: Scaffold(
        bottomSheet: (_data.currentTab == 0)
            ? Padding(
                padding: const EdgeInsets.all(15.0),
                child: ButtonCustom(
                  height: 35.0,
                  radius: 5.0,
                  child: Text(
                    "Add exercise",
                    style: context.titleMedium.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  onPress: () {
                    if (_chosenExercise == null) return context.pop();
                    return context.popArgs(
                      AddExerciseDto(
                        exercise: _chosenExercise!.id,
                        difficulty: level,
                        rep: int.parse(rep),
                        weight: int.parse(weight),
                        time: int.parse(time),
                      ),
                    );
                  },
                ),
              )
            : null,
        body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          itemCount: 2,
          itemBuilder: (context, index) => [
            _informationTab(context),
            _chooseExerciseTab(context),
          ][index],
        ),
      ),
    );
  }

  Widget _chooseExerciseTab(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10.0),
        const DividerDot(),
        const SizedBox(height: 5.0),
        Row(
          children: [
            IconButton(
                onPressed: () => _vm.changeTab(0),
                icon:
                    Icon(Icons.arrow_back, color: context.titleLarge.color!)),
            Text(
              "Choose exercise",
              style: context.titleLarge.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: _searchBox(),
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          width: double.infinity,
          height: 30.0,
          child: ListView.separated(
            padding: const EdgeInsets.only(left: 15.0),
            separatorBuilder: (_, __) => const SizedBox(width: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: _bodyPart.length,
            itemBuilder: (context, index) {
              final item = _bodyPart[index];
              final groundColor = (item.header == _data.bodyPart)
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).cardColor;
              final textColor = (item.header == _data.bodyPart)
                  ? Colors.white
                  : context.titleLarge.color;
              return GestureDetector(
                onTap: () => _vm.selectBodyPart(item.header),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  height: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                        width: 1, color: Theme.of(context).primaryColor),
                    color: groundColor,
                  ),
                  child: Text(
                    item.header,
                    style: context.titleSmall.copyWith(
                        color: textColor, fontWeight: FontWeight.w600),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10.0),
        Expanded(
          child: DefaultPagination<Exercise>(
            items: _items.items,
            loading: _state.loading,
            itemBuilder: (_, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: ExerciseChidItem(
                onPress: () => _vm.chooseExercise(_items.items[index]),
                exercise: _items.items[index],
              ),
            ),
            listenScrollBottom: () =>
                _vm.searchExercise(content: _searchController.text),
          ),
        ),
      ],
    );
  }

  Widget _informationTab(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 10.0),
        const DividerDot(),
        const SizedBox(height: 10.0),
        Text(
          'Add exercise',
          style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10.0),
        DropdownListRowWidget(
          listItem: levels,
          title: "Level",
          icon: const Icon(Icons.accessibility_new_outlined),
          itemChoice: level,
          onChange: (value) {
            setState(() {
              level = value!;
            });
          },
        ),
        const SizedBox(height: 10.0),
        DropdownListRowWidget(
          listItem: reps,
          title: "Rep",
          icon: const Icon(Icons.repeat_on),
          itemChoice: rep,
          onChange: (value) {
            setState(() {
              rep = value!;
            });
          },
        ),
        const SizedBox(height: 10.0),
        DropdownListRowWidget(
          listItem: timePerLesson,
          title: "Train time",
          icon: const Icon(Icons.timelapse_rounded),
          itemChoice: time,
          onChange: (value) {
            setState(() {
              time = value!;
            });
          },
        ),
        const SizedBox(height: 10.0),
        DropdownListRowWidget(
          listItem: weights,
          title: "Weight",
          icon: const Icon(Icons.line_weight),
          itemChoice: weight,
          onChange: (value) {
            setState(() {
              weight = value!;
            });
          },
        ),
        const SizedBox(height: 15.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Exercise chosen",
                style:
                    context.titleMedium.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            if (_chosenExercise != null)
              TextButton(
                onPressed: () => _vm.changeTab(1),
                child: Text(
                  "Choose exercise",
                  style: context.titleSmall.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor),
                ),
              )
          ],
        ),
        if (_chosenExercise != null)
          ...[
            Text(
              _chosenExercise!.name,
              style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              _chosenExercise!.description?.isNotEmpty ?? false
                  ? _chosenExercise!.description!
                  : "This is descriptions of ${_chosenExercise!.name}",
              style: context.titleSmall
                  .copyWith(color: Theme.of(context).hintColor),
            ),
            Wrap(
              spacing: 5.0,
              runSpacing: 5.0,
              children: [
                '${_chosenExercise!.reps ?? 0} mins',
                '${_chosenExercise!.bodyPart}',
                '${_chosenExercise!.caloriesPerMinute ?? 0} calories'
              ]
                  .map(
                    (e) => Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                          border: Border.all(
                              width: 1, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Text(
                        e,
                        style: context.titleSmall.copyWith(
                            fontSize: 12.0,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 5.0),
            EquipmentHorizontalItem(
              equipment: _chosenExercise!.equipment ?? "assisted",
              isFillWidth: true,
              leftMargin: false,
            ),
          ].expand((element) => [element, const SizedBox(height: 10.0)])
        else ...[
          const SizedBox(height: 10.0),
          GestureDetector(
            onTap: () => _vm.changeTab(1),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Theme.of(context).cardColor,
                border:
                    Border.all(width: 1, color: Theme.of(context).primaryColor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You have to choose exercise",
                    style: context.titleMedium
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  Text("💥 Please tap here to move choose exercise view",
                      style: context.titleSmall),
                ],
              ),
            ),
          )
        ]
      ]
          .expand((element) => [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: element)
              ])
          .toList(),
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
          () => _vm.searchExercise(content: text),
        );
      },
      textInputAction: TextInputAction.next,
      onSubmitted: (_) {},
    );
  }
}
