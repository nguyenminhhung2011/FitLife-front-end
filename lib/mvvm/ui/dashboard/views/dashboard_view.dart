import 'package:flutter/material.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/config/setting_config.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/layout/setting_layout/views/setting_screen.dart';
import 'package:fit_life/core/components/widgets/tab_bar/tab_bar_model.dart';
import 'package:fit_life/core/components/widgets/tab_bar/tab_bar_paint.dart';
import 'package:fit_life/core/components/widgets/tab_bar/tab_bar_type.dart';
import 'package:fit_life/core/components/widgets/tab_bar/tabbar_custom.dart';
import 'package:fit_life/mvvm/ui/dashboard/view_model/dashboard_view_model.dart';
import 'package:fit_life/mvvm/ui/fit_overview/views/fit_oveview_view.dart';
import 'package:fit_life/mvvm/ui/overview/views/overview_view.dart';
import 'package:fit_life/mvvm/ui/plan_overview/views/plan_overview_view.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drag_ball/drag_ball.dart';

class DashboardView extends ConsumerStatefulWidget {
  const DashboardView({super.key});

  @override
  ConsumerState<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends ConsumerState<DashboardView> {
  DashboardViewModel get _vm => ref.read(dashboardNotifier.notifier);

  int? get index => ref.watch(dashboardNotifier);

  final dashboardItem = <TabBarModel>[
    TabBarModel(
      svgAsset: ImageConst.homeIcon,
      screen: const ProviderScope(child: OverviewView()),
    ),
    TabBarModel(
      svgAsset: ImageConst.documentIcon,
      screen: const ProviderScope(child: PlanOverViewView()),
    ),
    TabBarModel(
      svgAsset: ImageConst.searchIcon,
      screen: const ProviderScope(child: FitOverViewView()),
    ),
    TabBarModel(
      svgAsset: ImageConst.personIcon,
      title: 'Profile',
      screen: SettingScreen(
        settingConfig: SettingConfig.fromJson({
          'enable_user': true,
          'setting_layout': 'view1',
          'hPadding': 10.0,
          'vPadding': 10.0,
          'shadow_elevation': 0.2,
          'pop_up_route': Routes.signIn,
          'behindBackground':
              'https://wallpapers.com/images/featured/panda-background-ymceqx76sixgb2ni.jpg',
          'list_view': [
            'health',
            'security',
            'lang',
            'appearance',
            'about',
            "changePass"
          ],
        }),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Dragball(  
      ball: Image.asset(ImageConst.brainIcon, width: 50.0, height: 50.0),
      onTap: () => context.openListPageWithRoute(Routes.conversation),
      iconSize: 16.0,
      initialPosition: const DragballPosition.defaultPosition(),
      onPositionChanged: (position) {},
      scrollAndHide: false,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        extendBody: true,
        bottomNavigationBar: TabBarCustom(
          onChangeTab: _vm.changeState,
          items: <TabBarItemStyle>[
            ...dashboardItem.map(
              (e) => TabBarItemStyle(
                title: e.title,
                assetIcon: e.svgAsset,
                screen: e.screen,
              ),
            )
          ],
          elevation: 0.05,
          tabBarType: TabBarType.animationTabBar,
          painterType: TabBarPainterType.circle,
          iconSize: 23.0,
          iconSelectedColor: Theme.of(context).primaryColor.withOpacity(0.8),
          usSelectedColor: context.titleLarge.color,
          duration: 200,
          isSvgIcon: true,
          animatedTabStyle: const AnimatedTabStyle(posHeight: 5),
        ),
        body: IndexedStack(
          index: index,
          children: [...dashboardItem.map((e) => e.screen)],
        ),
      ),
    );
  }
}
