import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/config/setting_config.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/image_const.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';
import 'package:flutter_base_clean_architecture/core/components/layout/setting_layout/views/setting_screen.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/tab_bar/tab_bar_model.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/tab_bar/tab_bar_paint.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/tab_bar/tab_bar_type.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/tab_bar/tabbar_custom.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/dashboard/view_model/dashboard_view_model.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/fit_overview/views/fit_oveview_view.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/overview/views/overview_view.dart';
import 'package:flutter_base_clean_architecture/mvvm/ui/plan_overview/views/plan_overview_view.dart';
import 'package:flutter_base_clean_architecture/routes/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
          'app_bar_color': '8763c4',
          'hPadding': 10.0,
          'vPadding': 10.0,
          'shadow_elevation': 0.2,
          'pop_up_route': Routes.splash,
          'behindBackground':
              'https://wallpapers.com/images/featured/panda-background-ymceqx76sixgb2ni.jpg',
          'list_view': ['security', 'lang', 'appearance', 'about'],
        }),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
