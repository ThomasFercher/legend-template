import 'package:flutter/material.dart';
import 'package:legend_design_core/interfaces/route_inferface.dart';
import 'package:legend_design_core/layout/appBar.dart/layout/appbar_layout.dart';
import 'package:legend_design_core/layout/config/appbar_layout.dart';
import 'package:legend_design_core/layout/config/layout_config.dart';
import 'package:legend_design_core/layout/drawers/menu_drawer.dart';
import 'package:legend_design_core/layout/navigation/tabbar/legend_tabbar.dart';
import 'package:legend_design_core/router/scaffold_route_info.dart';
import 'package:legend_design_template/content/modals/settings.dart';
import 'package:legend_design_template/content/pages/screen1.dart';
import 'package:legend_design_template/content/pages/screen2.dart';
import 'package:legend_router/router/legend_router.dart';
import 'package:legend_design_core/styles/legend_theme.dart';
import 'package:legend_router/router/routes/route_display.dart';

import '../content/pages/screen3.dart';
import '../content/pages/screen4.dart';

enum PageLayout {
  Header,
  HeaderSider,
  Sider,
}

class RoutesTheme extends RouteInterface<PageLayout> {
  const RoutesTheme() : super();

  @override
  Map<PageLayout, DynamicRouteLayout> buildLayouts(LegendTheme theme) {
    List<double> splits = theme.splits;
    return {
      PageLayout.Header: DynamicRouteLayout.firstExpand(
        splits,
        [
          const RouteLayout(
            appBarLayout: AppBarLayout(
              AppBarLayoutConfig.fixedAbove,
              AppBarLayoutType.TiMeAc,
            ),
            bottomBarLayout: BottomBarLayout.Show,
            footerLayout: FooterLayout.None,
            siderLayout: SiderLayout.None,
          ),
          const RouteLayout(
            appBarLayout: AppBarLayout(
              AppBarLayoutConfig.fixedAbove,
              AppBarLayoutType.TiMeAc,
            ),
            bottomBarLayout: BottomBarLayout.None,
            footerLayout: FooterLayout.Show,
            siderLayout: SiderLayout.None,
          ),
        ],
      ),
      PageLayout.HeaderSider: DynamicRouteLayout.firstExpand(
        splits,
        [
          const RouteLayout(
            appBarLayout: AppBarLayout(
              AppBarLayoutConfig.fixedAbove,
              AppBarLayoutType.TiMeAc,
            ),
            bottomBarLayout: BottomBarLayout.Show,
            footerLayout: FooterLayout.None,
            siderLayout: SiderLayout.None,
          ),
          const RouteLayout(
            appBarLayout: AppBarLayout(
              AppBarLayoutConfig.fixedAbove,
              AppBarLayoutType.TiMeAc,
            ),
            bottomBarLayout: BottomBarLayout.None,
            footerLayout: FooterLayout.Show,
            siderLayout: SiderLayout.Left,
          ),
        ],
      ),
      PageLayout.Sider: DynamicRouteLayout.firstExpand(
        splits,
        [
          const RouteLayout(
            appBarLayout: AppBarLayout(
              AppBarLayoutConfig.body,
              AppBarLayoutType.TiMeAc,
            ),
            bottomBarLayout: BottomBarLayout.Show,
            footerLayout: FooterLayout.None,
            siderLayout: SiderLayout.None,
          ),
          const RouteLayout(
            appBarLayout: AppBarLayout(
              AppBarLayoutConfig.body,
              AppBarLayoutType.TiMeAc,
            ),
            bottomBarLayout: BottomBarLayout.None,
            footerLayout: FooterLayout.Show,
            siderLayout: SiderLayout.Left,
          ),
        ],
      ),
    };
  }

  @override
  List<RouteInfo> buildRoutes(
    Map<PageLayout, DynamicRouteLayout> layouts,
    LegendTheme theme,
  ) {
    return [
      PageInfo(
        name: "/",
        config: ScaffoldRouteConfig(
          pageName: "Screen 1",
          layout: layouts[PageLayout.Header]!,
        ),
        page: const Screen1(),
      ),
      PageInfo(
        name: "/screen2",
        config: ScaffoldRouteConfig(
          pageName: "Screen 2",
          layout: layouts[PageLayout.Sider]!,
        ),
        page: const Screen2(),
      ),
      PageInfo(
        name: "/screen3",
        config: ScaffoldRouteConfig(
          pageName: "Screen 3",
          layout: layouts[PageLayout.HeaderSider]!,
        ),
        page: const Screen3(),
      ),
      TabviewPageInfo(
        name: "/screen4",
        style: TabBarStyle(
            background: theme.colors.background1,
            height: 48,
            alignment: MainAxisAlignment.center),
        config: ScaffoldRouteConfig(
          pageName: "Screen 4",
          layout: layouts[PageLayout.Header]!,
        ),
        page: const Screen4(),
        children: [
          TabviewChildPageInfo(
            name: "/screen4/test",
            page: Container(),
            config: ScaffoldRouteConfig(
              pageName: "Cool 1",
              layout: layouts[PageLayout.Header]!,
            ),
          ),
        ],
      ),
      ModalRouteInfo(
        name: "/settings",
        page: Settings(),
        width: theme.sizing.get("settingsWidth"),
      ),
      ModalRouteInfo(
        name: "/menudrawer",
        page: const MenuDrawer(),
        width: theme.menuDrawerSizing.width,
      ),
    ];
  }

  @override
  List<RouteDisplay> buildDisplays() {
    return [
      const SimpleRouteDisplay(
        title: "Home",
        route: "/",
        icon: Icons.home,
      ),
      const SimpleRouteDisplay(
        title: "Screen 2",
        route: "/screen2",
        icon: Icons.text_snippet,
      ),
      const SimpleRouteDisplay(
        title: "Screen 3",
        route: "/screen3",
        icon: Icons.abc_rounded,
      ),
      TabRouteDisplay(
        title: "Screen 4",
        route: "/screen4",
        icon: Icons.yard_rounded,
        children: [
          SimpleRouteDisplay(
            title: "Development",
            route: "/screen4/test",
            icon: Icons.yard_sharp,
          ),
        ],
      ),
    ];
  }
}
