import 'package:flutter/material.dart';
import 'package:legend_design_core/interfaces/layout_delegate.dart';
import 'package:legend_design_core/layout/appBar.dart/appbar_layout.dart';
import 'package:legend_design_core/layout/bottomBar.dart/bottom_bar_layout.dart';
import 'package:legend_design_core/layout/config/dynamic_route_layout.dart';
import 'package:legend_design_core/layout/config/route_layout.dart';
import 'package:legend_design_core/layout/footer/fixed_footer.dart';
import 'package:legend_design_core/layout/footer/footer_layout.dart';
import 'package:legend_design_core/layout/menu_drawer/menu_drawer_layout.dart';
import 'package:legend_design_core/layout/scaffold/config/scaffold_config.dart';
import 'package:legend_design_core/layout/sider/sider_layout.dart';
import 'package:legend_design_core/legend_design_core.dart';
import 'package:legend_design_core/widgets/elevation/elevated_card.dart';
import 'package:legend_design_core/widgets/icons/legend_animated_icon.dart';
import 'package:legend_design_template/config/routes.dart';

import 'widgets/footer.dart';

class AppLayout implements LayoutDelegate {
  @override
  ScaffoldConfig get defaultConfig {
    return ScaffoldConfig(
      whether: ScaffoldWhether(
        showBackButton: false,
        showSiderMenu: true,
        showAppBarMenu: true,
        showSiderChildMenu: true,
        showSiderSubMenu: false,
        showTopSubMenu: true,
        singlePage: false,
        shareParentSiderMenu: false,
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
              ModalRouter.of(c).push("/settings");
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
                    ModalRouter.of(c).push("/settings");
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
  Map<PageLayout, DynamicRouteLayout> buildLayouts(List<double> splits) {
    final base = RouteLayout(
      appBarLayout: AppBarLayout(
        layout: AppBarLayoutConfig.fixedAbove,
        aligment: AppBarLayoutType.TiMeAc,
        showTabbar: false,
      ),
      bottomBarLayout: NoBottomBarLayout(),
      footerLayout: FooterLayout(),
      siderLayout: NoSiderLayout(),
      menuDrawerLayout: MenuDrawerLayout(
        type: MenuDrawerLayoutType.drawerRight,
      ),
    );
    return {
      PageLayout.header: DynamicRouteLayout.override(
        splits,
        defaultLayout: base,
        overrides: {
          splits.first: RouteLayoutOverride(
            appBarLayout: AppBarLayoutOverride(
              layout: AppBarLayoutConfig.fixedAbove,
              aligment: AppBarLayoutType.TiMeAc,
            ),
            bottomBarLayout: BottomBarLayoutOverride(),
          ),
        },
      ),
      PageLayout.headerTabbar: DynamicRouteLayout.override(
        splits,
        defaultLayout: base,
        overrides: {
          splits.first: RouteLayoutOverride(
            appBarLayout: AppBarLayoutOverride(
              layout: AppBarLayoutConfig.fixedAbove,
              aligment: AppBarLayoutType.MeTiAc,
              showTabbar: true,
            ),
            bottomBarLayout: BottomBarLayoutOverride(),
            footerLayout: NoFooterLayoutOverride(),
          ),
        },
      ),
      PageLayout.sider: DynamicRouteLayout.override(
        splits,
        defaultLayout: RouteLayout(
          appBarLayout: NoAppBarLayout(),
          bottomBarLayout: NoBottomBarLayout(),
          footerLayout: FooterLayout(),
          siderLayout: SiderLayout(left: true),
          menuDrawerLayout: NoMenuDrawerLayout(),
        ),
        overrides: {
          splits.first: RouteLayoutOverride(
            appBarLayout: AppBarLayoutOverride(
              layout: AppBarLayoutConfig.fixedAbove,
              aligment: AppBarLayoutType.TiMeAc,
            ),
            bottomBarLayout: BottomBarLayoutOverride(),
            footerLayout: NoFooterLayoutOverride(),
          ),
        },
      ),
    };
  }
}
