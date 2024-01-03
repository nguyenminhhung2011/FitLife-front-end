import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/widgets/loading_page.dart';
import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/core/services/notification_service.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:fit_life/mvvm/object/entity/upcoming_session/upcoming_session.dart';
import 'package:fit_life/mvvm/ui/overview/view_model/overview_data.dart';
import 'package:fit_life/mvvm/ui/overview/view_model/overview_view_model.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/category/category_custom.dart';
import 'package:fit_life/core/components/widgets/category/category_type.dart';
import 'package:fit_life/core/components/widgets/dot_custom.dart';
import 'package:fit_life/core/components/widgets/fit_life/up_coming_schedule_ex_item.dart';
import 'package:fit_life/core/components/widgets/header_custom.dart';
import 'package:fit_life/core/components/widgets/swiper_custom.dart';
import 'package:fit_life/mvvm/ui/overview/views/widgets/banner_item_builder.dart';
import 'package:fit_life/mvvm/ui/overview/views/widgets/feeling_field.dart';
import 'package:fit_life/mvvm/ui/overview/views/widgets/paper_field.dart';
import 'package:fit_life/mvvm/ui/overview/views/widgets/render_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class OverviewView extends ConsumerStatefulWidget {
  const OverviewView({super.key});

  @override
  ConsumerState<OverviewView> createState() => _OverviewViewState();
}

class _OverviewViewState extends ConsumerState<OverviewView> {
  OverviewViewModel get _vm => ref.read(overviewStateNotifier.notifier);

  OverviewData get _data => ref.watch(overviewStateNotifier).data;

  UpComingSession? get _upComingSession => _data.upComingSession;

  Color get _backGroundColor => Theme.of(context).scaffoldBackgroundColor;

  Color get _primaryColor => Theme.of(context).primaryColor;

  TextStyle get _headerStyle =>
      context.titleMedium.copyWith(fontWeight: FontWeight.w600);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _vm.getUpcomingScheduleExercise();
        _vm.getTopNews();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _listenStateChange(OverviewState state) {
    state.maybeWhen(
      getTopNewsFailed: (_, message) =>
          context.showSnackBar("🐛[Get top news] $message"),
      getUpComingSessionFailed: (_, message) =>
          context.showSnackBar("🐛[Get upcoming session] $message"),
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(overviewStateNotifier, (_, next) => _listenStateChange(next));
    return Scaffold(
      backgroundColor: _backGroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _backGroundColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 70.0,
        title: const RenderOverviewAppBar(),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          Future.delayed(Duration.zero, () {
            _vm.getUpcomingScheduleExercise();
            _vm.getTopNews();
          });
        },
        child: _body(context),
      ),
    );
  }

  ListView _body(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 15.0),
            DotCustom(color: _primaryColor, full: true, radius: 7.0),
            const SizedBox(width: 5.0),
            Text(S.of(context).howAreYou, style: context.titleSmall),
          ],
        ),
        FeelingField(primaryColor: _primaryColor),
        HeaderTextCustom(
            headerText: S.of(context).feature,
            textStyle: _headerStyle,
            isShowSeeMore: true,
            onPress: () async => injector
                .get<NotificationService>()
                .showFlutterNotification(
                    id: 10,
                    title: "This is title",
                    body: "dasd",
                    payload: "dasdad")),
        SwipeCustom(
          itemCount: 3,
          height: 200,
          isShowSlideDot: false,
          autoPlay: false,
          itemBuilder: (index) {
            final banner = Constant.listContent.elementAt(index);
            return BannerItemBuilder(banner: banner, onPress: () {});
          },
          swipeLayout: SwiperLayout.DEFAULT,
        ),
        const SizedBox(),
        HeaderTextCustom(
          headerText: S.of(context).exercise,
          textStyle: _headerStyle,
          isShowSeeMore: true,
          onPress: () => context.openListPageWithRoute(Routes.categories),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: CategoryField(
            categoryType: CategoryType.expandCategory, // => Change here
            selectedColor: Theme.of(context).primaryColor,
            numberColumn: 2,
            spacingItem: 15.0,
            categoryGridFormat:
                const CategoryGridFormat(crossSpacing: 10.0, mainSpacing: 10.0),
            categoryTextStyle: context.titleSmall.copyWith(
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
            ),
            categories: <CategoryStyle>[
              ...Constant.listCategory.mapIndexed(
                (index, e) => CategoryStyle(
                  text: e.title,
                  typeImage: TypeImage.assetSvg,
                  iconUrl: e.iconUrl,
                  color: e.color,
                  iconSize: e.iconSize,
                  isIcon: e.isIconData,
                  padding: const EdgeInsets.all(15.0),
                  onPress: () {},
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 5.0),
        HeaderTextCustom(
          headerText: S.of(context).sessionSchedule,
          textStyle: _headerStyle,
        ),
        const SizedBox(height: 5.0),
        if (_data.isLoadingUpcomingScheduleExercise)
          Center(
            child: StyleLoadingWidget.foldingCube.renderWidget(
                size: 40.0, color: Theme.of(context).primaryColor),
          )
        else if (_upComingSession != null)
          UpComingScheduleExItem(upComingSession: _upComingSession!),
        const SizedBox(),
        HeaderTextCustom(
          headerText: 'Health paper',
          textStyle: _headerStyle,
          isShowSeeMore: true,
          onPress: () => context.openListPageWithRoute(Routes.listNews),
        ),
        if (_data.isLoadingTopNews)
          Center(
            child: StyleLoadingWidget.foldingCube.renderWidget(
                size: 40.0, color: Theme.of(context).primaryColor),
          )
        else
          PaperSliderView(news: _data.news ?? []),
        const SizedBox(height: 40.0),
      ].expand((e) => [e, const SizedBox(height: 5.0)]).toList(),
    );
  }
}
