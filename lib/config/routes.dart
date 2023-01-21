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
import 'package:legend_design_template/content/pages/screen3.dart';
import 'package:legend_design_template/content/pages/screen4.dart';
import 'package:legend_design_template/content/pages/screen5.dart';
import 'package:legend_utils/extensions/maps.dart';
import 'layout.dart';

class AppRoutes extends RoutesDelegate {
  @override
  List<RouteInfo> buildRoutes(
    LayoutInfo layouts,
  ) {
    return [
      PageInfo(
        name: "/",
        title: "Home",
        icon: Icons.home,
        config: ScaffoldRouteConfig(
          layout: layouts.get((PageLayout.header)),
          whether: ScaffoldWhetherOverride(
            showAppBarMenu: true,
          ),
        ),
        page: const Screen1(),
      ),
      PageInfo(
        name: "/colors",
        title: "Colors",
        icon: Icons.color_lens,
        config: ScaffoldRouteConfig(
          layout: layouts.get((PageLayout.header)),
          whether: ScaffoldWhetherOverride(
            showAppBarMenu: true,
          ),
        ),
        page: const Screen2(),
      ),
      PageInfo(
        name: "/sizing",
        title: "Sizing",
        icon: Icons.layers_outlined,
        config: ScaffoldRouteConfig(
          layout: layouts.get((PageLayout.header)),
          whether: ScaffoldWhetherOverride(
            showSiderMenu: true,
          ),
        ),
        page: const Screen3(),
      ),
      PageInfo(
        name: "/products/development",
        title: "Development",
        icon: Icons.developer_board_rounded,
        page: const Screen4(),
        config: ScaffoldRouteConfig(
          layout: layouts.get((PageLayout.header)),
          whether: ScaffoldWhetherOverride(
            showSiderMenu: true,
          ),
        ),
      ),
      PageInfo(
        name: "/theme",
        title: "Theme",
        icon: Icons.color_lens,
        config: ScaffoldRouteConfig(
          layout: layouts.get((PageLayout.header)),
        ),
        page: const Screen5(),
      ),
      const ModalRouteInfo(
        name: "/settings",
        title: "Home",
        page: Settings(),
      ),
      const ModalRouteInfo(
        name: "/menudrawer",
        title: "Home",
        page: MenuDrawer(),
      ),
    ];
  }
}
