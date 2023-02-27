import 'package:flutter/material.dart';
import 'package:legend_design_core/interfaces/layout_delegate.dart';
import 'package:legend_design_core/interfaces/route_delegate.dart';
import 'package:legend_design_core/layout/menu_drawer/menu_drawer.dart';
import 'package:legend_design_core/layout/scaffold/config/scaffold_config.dart';
import 'package:legend_design_core/legend_design_core.dart';
import 'package:legend_design_core/router/scaffold_route_info.dart';
import 'package:legend_design_template/content/modals/settings.dart';
import 'package:legend_design_template/content/pages/screen1.dart';
import 'package:legend_design_template/content/pages/screen2.dart';
import 'package:legend_design_template/content/pages/screen5.dart';

import '../content/pages/screen3.dart';
import '../content/pages/screen4.dart';

enum PageLayout {
  header,
  headerTabbar,
  headerSider,
  sider,
}

class AppRoutes extends RoutesDelegate {
  const AppRoutes() : super();

  @override
  List<RouteInfo> buildRoutes(LayoutInfo layouts) {
    return [
      PageInfo(
        name: "/",
        config: ScaffoldRouteConfig(
          layout: layouts[PageLayout.header]!,
        ),
        page: const Screen1(),
        title: "Home",
        icon: Icons.home,
      ),
      PageInfo(
        name: "/colors",
        config: ScaffoldRouteConfig(
          layout: layouts[PageLayout.sider]!,
          whether: ScaffoldWhetherOverride(
            showSiderMenu: true,
            showAppBarMenu: false,
          ),
        ),
        page: const Screen2(),
        title: "Colors",
        icon: Icons.color_lens,
      ),
      PageInfo(
        name: "/sizing",
        config: ScaffoldRouteConfig(
          layout: layouts[PageLayout.sider]!,
          whether: ScaffoldWhetherOverride(
            showSiderMenu: true,
            showSiderSubMenu: true,
          ),
        ),
        page: const Screen3(),
        title: "Sizing",
        icon: Icons.layers,
      ),
      PageInfo(
        name: "/screen4",
        icon: Icons.menu_book_rounded,
        config: ScaffoldRouteConfig(
          layout: layouts[PageLayout.headerTabbar]!,
        ),
        page: const Screen4(),
        title: "Example",
        children: [
          PageInfo(
            name: "/screen4/test",
            page: const Screen5(),
            icon: Icons.textsms,
            title: "Tabbar Page",
            config: ScaffoldRouteConfig(
              layout: layouts[PageLayout.headerTabbar]!,
            ),
          ),
        ],
      ),
      const ModalRouteInfo(
        title: "",
        name: "/settings",
        page: Settings(),
      ),
      const ModalRouteInfo(
        title: "",
        name: "/menudrawer",
        page: MenuDrawer(),
      ),
    ];
  }
}
