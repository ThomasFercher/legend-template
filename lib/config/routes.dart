import 'package:flutter/material.dart';
import 'package:legend_design_core/interfaces/route_inferface.dart';
import 'package:legend_design_core/layout/appBar.dart/layout/appbar_layout.dart';
import 'package:legend_design_core/layout/config/appbar_layout.dart';
import 'package:legend_design_core/layout/config/layout_config.dart';
import 'package:legend_design_core/layout/drawers/menu_drawer.dart';
import 'package:legend_design_core/layout/footer/fixed_footer.dart';
import 'package:legend_design_core/layout/scaffold/config/scaffold_config.dart';
import 'package:legend_design_core/legend_design_core.dart';
import 'package:legend_design_core/router/scaffold_route_info.dart';
import 'package:legend_design_core/widgets/elevation/elevated_card.dart';
import 'package:legend_design_core/widgets/icons/legend_animated_icon.dart';
import 'package:legend_design_template/content/modals/settings.dart';
import 'package:legend_design_template/content/pages/screen1.dart';
import 'package:legend_design_template/content/pages/screen2.dart';
import 'package:legend_design_template/content/pages/screen5.dart';

import '../content/pages/screen3.dart';
import '../content/pages/screen4.dart';
import 'widgets/footer.dart';

enum PageLayout {
  header,
  headerTabbar,
  headerSider,
  sider,
}

class RoutesTheme extends RouteInterface<PageLayout> {
  const RoutesTheme() : super();

  @override
  Map<PageLayout, DynamicRouteLayout> buildLayouts(List<double> splits) {
    return {
      PageLayout.header: DynamicRouteLayout.firstExpand(
        splits,
        [
          const RouteLayout(
            appBarLayout: AppBarLayout(
              layout: AppBarLayoutConfig.fixedAbove,
              aligment: AppBarLayoutType.TiMeAc,
            ),
            bottomBarLayout: BottomBarLayout.Show,
            footerLayout: FooterLayout.Show,
            siderLayout: SiderLayout.None,
          ),
          const RouteLayout(
            appBarLayout: AppBarLayout(
              layout: AppBarLayoutConfig.fixedAbove,
              aligment: AppBarLayoutType.TiMeAc,
            ),
            bottomBarLayout: BottomBarLayout.None,
            footerLayout: FooterLayout.Show,
            siderLayout: SiderLayout.None,
          ),
        ],
      ),
      PageLayout.headerTabbar: DynamicRouteLayout.expandAfter(
        splits,
        [
          const RouteLayout(
            appBarLayout: AppBarLayout(
              layout: AppBarLayoutConfig.fixedAbove,
              aligment: AppBarLayoutType.MeTiAc,
              showTabbar: true,
            ),
            bottomBarLayout: BottomBarLayout.Show,
            footerLayout: FooterLayout.Show,
            siderLayout: SiderLayout.None,
          ),
          const RouteLayout(
            appBarLayout: AppBarLayout(
              layout: AppBarLayoutConfig.fixedAbove,
              aligment: AppBarLayoutType.TiMeAc,
              showTabbar: true,
            ),
            bottomBarLayout: BottomBarLayout.None,
            footerLayout: FooterLayout.Show,
            siderLayout: SiderLayout.None,
          )
        ],
        1,
      ),
      PageLayout.sider: DynamicRouteLayout.firstExpand(
        splits,
        [
          const RouteLayout(
            appBarLayout: AppBarLayout(
              layout: AppBarLayoutConfig.fixedAbove,
              aligment: AppBarLayoutType.TiMeAc,
            ),
            bottomBarLayout: BottomBarLayout.Show,
            footerLayout: FooterLayout.None,
            siderLayout: SiderLayout.None,
          ),
          const RouteLayout(
            appBarLayout: AppBarLayout.none(),
            bottomBarLayout: BottomBarLayout.None,
            footerLayout: FooterLayout.Show,
            siderLayout: SiderLayout.Left,
          ),
        ],
      ),
    };
  }

  @override
  ScaffoldConfig buildConfig() {
    return ScaffoldConfig(
      whether: const ScaffoldWhether(
        showBackButton: false,
        showSiderMenu: true,
      ),
      builders: ScaffoldBuilders(
        appBarActions: (c, theme) {
          return LegendAnimatedIcon(
            icon: Icons.color_lens,
            theme: LegendAnimtedIconTheme(
              enabled: theme.colors.selection,
              disabled: theme.colors.appBar.foreground,
            ),
            iconSize: theme.appBarSizing.iconSize,
            disableShadow: true,
            onPressed: () {
              ModalRouter.of(c).push(
                settings: const RouteSettings(name: "/settings"),
                useKey: true,
              );
            },
          );
        },
        customFooter: FixedFooter(
          builder: ((context, sizing, colors) => const Footer()),
        ),
        siderBuilder: (c, theme) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(
                height: 16,
                color: theme.siderColors.foreground,
              ),
              ElevatedCard(
                elevation: 1,
                background: theme.colors.onPrimary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                borderRadius: BorderRadius.circular(10),
                child: LegendAnimatedIcon(
                  icon: Icons.color_lens,
                  theme: LegendAnimtedIconTheme(
                    enabled: theme.colors.selection,
                    disabled: theme.colors.sider.background,
                  ),
                  iconSize: theme.sizing.iconSize2,
                  disableShadow: true,
                  onPressed: () {
                    ModalRouter.of(c).push(
                      settings: const RouteSettings(name: "/settings"),
                      useKey: true,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  List<RouteInfo> buildRoutes(
    Map<PageLayout, DynamicRouteLayout> layouts,
  ) {
    return [
      PageInfo(
        name: "/",
        config: ScaffoldRouteConfig(
          pageName: "Screen 1",
          layout: layouts[PageLayout.header]!,
        ),
        page: const Screen1(),
        title: "Home",
        icon: Icons.home,
      ),
      PageInfo(
        name: "/colors",
        config: ScaffoldRouteConfig(
          pageName: "Colors",
          layout: layouts[PageLayout.sider]!,
          whether: const ScaffoldWhether(
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
          pageName: "Sizing",
          layout: layouts[PageLayout.sider]!,
          whether: const ScaffoldWhether(
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
          pageName: "Screen 4",
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
              pageName: "Cool 1",
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
