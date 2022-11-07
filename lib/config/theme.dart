import 'package:flutter/material.dart';
import 'package:legend_design_core/interfaces/theme_interface.dart';
import 'package:legend_design_core/styles/colors/legend_colors.dart';
import 'package:legend_design_core/styles/colors/subcolors/menuDrawer/menu_drawer_colors.dart';
import 'package:legend_design_core/styles/colors/subcolors/micros/menu/menu_colors.dart';
import 'package:legend_design_core/styles/colors/subcolors/micros/sidemenu/sidemenu_colors.dart';
import 'package:legend_design_core/styles/colors/subcolors/micros/tabbar/tabbar_colors.dart';
import 'package:legend_design_core/styles/colors/subcolors/sub_colors.dart';
import 'package:legend_design_core/styles/legend_theme.dart';
import 'package:legend_design_core/styles/sizing/core/core_sizing.dart';
import 'package:legend_design_core/styles/sizing/core/override.dart';
import 'package:legend_design_core/styles/sizing/sub_sizing/legend_sub_sizing.dart';
import 'package:legend_design_core/styles/sizing/sub_sizing/micros/menu/menu_sizing.dart';
import 'package:legend_design_core/styles/sizing/sub_sizing/micros/sidemenu/sidemenu_sizing.dart';
import 'package:legend_design_core/styles/sizing/sub_sizing/micros/tabbar/tabbar_sizing.dart';
import 'package:legend_design_core/styles/typography/style/typography_colors.dart';
import 'package:legend_design_core/styles/typography/style/typography_sizing.dart';
import 'package:legend_utils/legend_utils.dart';

class AppTheme extends ThemeInterface {
  const AppTheme() : super();

  @override
  LegendColorTheme buildColorTheme() {
    return LegendColorTheme(
      themes: [
        LegendPalette(
          primary: Colors.indigo[900]!,
          secondary: Colors.tealAccent,
          tertiary: Colors.blueGrey,
          foreground1: Colors.blueGrey[900]!,
          foreground2: Colors.blueGrey[800]!,
          foreground3: Colors.indigo[600]!,
          foreground4: Colors.indigo[100]!,
          foreground5: Colors.indigo[50]!,
          background1: Colors.indigo[50]!,
          background2: Colors.indigo[100]!,
          background3: Colors.indigo[200]!,
          background4: Colors.indigo[600]!,
          background5: Colors.blueGrey[800]!,
          error: Colors.red[400]!,
          disabled: LegendColors.gray7,
          selection: Colors.tealAccent[400]!,
          onPrimary: Colors.indigo[100]!,
          onSecondary: Colors.teal[200]!,
          onTertiary: Colors.blueGrey[200]!,
          custom: {
            "custom": Colors.blue,
          },
          subcolors: (colors) {
            return LegendSubColors(
              typography: TypographyColorsOverride(
                h5: colors.foreground1,
                h4: colors.foreground1,
                h3: colors.foreground1,
                h1: colors.foreground2,
              ),
              appBar: AppBarColorsOverride(
                background: colors.primary,
                foreground: colors.onPrimary,
                buildComponents: (appBar) {
                  return AppBarColorsComponentsOverride(
                    menuColors: MenuColorsOverride(
                      foreground: appBar.foreground,
                      menuBackground: appBar.background,
                      background: appBar.background,
                    ),
                    subMenuColors: SideMenuColorsOverride(
                      foreground: appBar.foreground,
                      background: appBar.background,
                      menuBackground: appBar.background,
                    ),
                    tabbarColors: TabbarColorsOverride(
                      background: colors.background1,
                    ),
                  );
                },
              ),
              footer: FooterColorsOverride(
                background: colors.background5,
              ),
              bottomBar: BottomBarColorsOverride(
                backgroundColor: colors.background1,
                activeColor: Colors.indigoAccent,
                disabledColor: Colors.indigoAccent[100],
              ),
              sider: SiderColorsOverride(
                background: colors.primary,
                foreground: colors.foreground5,
                selection: colors.selection,
                backgroundMenu: colors.primary,
                buildComponents: (sider) {
                  return SiderColorsComponentsOverride(
                    menuColors: SideMenuColorsOverride(
                      background: colors.primary.darken(0.05),
                      activeForeground: sider.selection,
                      activeBackground: colors.primary.darken(0.1),
                      foreground: sider.foreground,
                      menuBackground: sider.background,
                    ),
                  );
                },
              ),
              menuDrawer: MenuDrawerColorsOverride(
                background: Colors.white,
                backgroundMenu: colors.onPrimary,
                foreground: colors.primary,
                background_selection: colors.primary,
                background_menu_selection: colors.primary,
                buildComponents: (menu) {
                  return MenuDrawerColorsComponentsOverride(
                    menuColors: SideMenuColorsOverride(
                      menuBackground: menu.background,
                      activeBackground: colors.primary,
                      activeForeground: colors.selection,
                      background: menu.background,
                      foreground: menu.foreground,
                    ),
                  );
                },
              ),
            );
          },
        ),
        LegendPalette(
          primary: Colors.indigo[900]!,
          secondary: Colors.tealAccent,
          tertiary: Colors.blueGrey,
          foreground1: Colors.white,
          foreground2: Colors.blueGrey[50]!,
          foreground3: Colors.blueGrey[50]!,
          foreground4: Colors.blueGrey[50]!,
          foreground5: Colors.blueGrey[100]!,
          background1: Colors.grey[850]!,
          background2: Colors.grey[800]!,
          background3: Colors.grey[700]!,
          background4: Colors.grey[600]!,
          background5: Colors.grey[500]!,
          error: Colors.red[400]!,
          disabled: LegendColors.gray2,
          selection: Colors.tealAccent[400]!,
          onPrimary: Colors.indigo[50]!,
          onSecondary: Colors.teal[200]!,
          onTertiary: Colors.blueGrey[200]!,
          custom: {
            "custom": Colors.blue,
          },
          subcolors: (colors) {
            return LegendSubColors(
              typography: TypographyColorsOverride(
                h5: colors.foreground1,
                h4: colors.foreground1,
                h3: colors.foreground1,
                h1: colors.foreground2,
              ),
              appBar: AppBarColorsOverride(
                background: colors.primary,
                foreground: colors.onPrimary,
                buildComponents: (appBar) {
                  return AppBarColorsComponentsOverride(
                    menuColors: MenuColorsOverride(
                      foreground: appBar.foreground,
                      //   activeBackground: appBar.foreground,
                      menuBackground: appBar.background,
                      background: appBar.background,
                    ),
                    subMenuColors: SideMenuColorsOverride(
                      foreground: appBar.foreground,
                      background: appBar.background,
                      menuBackground: appBar.background,
                    ),
                    tabbarColors: TabbarColorsOverride(
                      background: colors.primary,
                    ),
                  );
                },
              ),
              footer: FooterColorsOverride(
                background: colors.background1,
              ),
              bottomBar: BottomBarColorsOverride(
                backgroundColor: colors.background1,
                activeColor: Colors.indigoAccent,
                disabledColor: Colors.indigoAccent[100],
              ),
              sider: SiderColorsOverride(
                background: colors.primary,
                foreground: colors.onPrimary,
                selection: colors.selection,
                backgroundMenu: colors.primary,
                buildComponents: (sider) {
                  return SiderColorsComponentsOverride(
                    menuColors: SideMenuColorsOverride(
                      background: colors.primary.darken(0.05),
                      activeForeground: sider.selection,
                      activeBackground: colors.primary.darken(0.1),
                      foreground: sider.foreground,
                      menuBackground: sider.background,
                    ),
                  );
                },
              ),
              menuDrawer: MenuDrawerColorsOverride(
                background: colors.background1,
                backgroundMenu: colors.onPrimary,
                foreground: colors.foreground1,
                background_selection: colors.primary,
                background_menu_selection: colors.primary,
                buildComponents: (menu) {
                  return MenuDrawerColorsComponentsOverride(
                    menuColors: SideMenuColorsOverride(
                      menuBackground: menu.background,
                      activeBackground: colors.primary,
                      activeForeground: colors.selection,
                      background: colors.background2,
                      foreground: colors.foreground2,
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  LegendSizingTheme buildSizingTheme() {
    return LegendSizingTheme(
      defaultSizing: LegendSizing(
        custom: {
          'settingsWidth': 280,
        },
        key: 720,
        elevation1: 0,
        elevation2: 2,
        elevation3: 4,
        elevation4: 8,
        iconSize1: 16,
        iconSize2: 24,
        iconSize3: 28,
        iconSize4: 32,
        radius1: 8,
        radius2: 12,
        radius3: 16,
        radius4: 20,
        spacing1: 16,
        spacing2: 24,
        spacing3: 36,
        spacing4: 48,
        subSizing: (LegendCoreSizing sizing) {
          return LegendSubSizing(
            typographySizing: TypographySizingStyle(
              h0: 12,
              h1: 14,
              h2: 18,
              h3: 24,
              h4: 28,
              h5: 32,
            ),
            footerSizing: FooterSizingStyle(
              height: 80,
              maxWidth: 1000,
              padding: const EdgeInsets.all(24),
            ),
            siderSizing: SiderSizingStyle(
              width: 200,
              iconSize: 18,
              spacing: 8,
              padding: const EdgeInsets.only(
                top: 16,
                left: 8,
                right: 8,
                bottom: 8,
              ),
              buildComponents: (sider) {
                return SiderSizingComponents(
                  sideMenuSizing: SideMenuSizingStyle(
                    spacing: 8,
                    borderRadius: sizing.radius1.asRadius(),
                    iconSize: sizing.iconSize2,
                    itemHeight: 48,
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                  ),
                );
              },
            ),
            appBarSizing: AppBarSizingStyle(
              appBarHeight: 80,
              contentPadding: const EdgeInsets.only(
                right: 12,
                left: 16,
              ),
              iconSize: 22,
              spacing: 4,
              logoSize: 64,
              buildComponents: (AppBarSizingInfo appBar) {
                return AppBarSizingComponents(
                  menuSizing: MenuSizingStyle(
                    spacing: 21,
                    borderRadius: 21.0.asRadius(),
                    iconSize: sizing.iconSize1,
                    height: 42,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 21,
                    ),
                    itemSpacing: 4,
                  ),
                  subMenuSizing: SideMenuSizingStyle(
                    spacing: 21,
                    borderRadius: 21.0.asRadius(),
                    iconSize: sizing.iconSize1,
                    itemHeight: 48,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 21,
                    ),
                  ),
                  tabbarSizing: TabbarSizingStyle(
                    height: 56,
                    alignment: MainAxisAlignment.start,
                  ),
                );
              },
            ),
            menuDrawerSizing: MenuDrawerSizingStyle(
              width: 320,
              iconSize: 24,
              itemHeight: 48,
              spacing: 8,
              itemPadding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 2,
              ),
              subMenuHeaderHeight: 48,
              subItemPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 2,
              ),
              subMenuIconSize: 12,
              buildComponents: (MenuDrawerSizingInfo menu) {
                return MenuDrawerSizingComponents(
                  sideMenuSizing: SideMenuSizingStyle(
                    spacing: menu.spacing,
                    borderRadius: sizing.radius1.asRadius(),
                    iconSize: sizing.iconSize2,
                    itemHeight: menu.itemHeight,
                    padding: menu.itemPadding,
                  ),
                );
              },
            ),
            bottomBarSizing: BottomBarSizingStyle(
              iconSize: 24,
              height: 80,
              itemWidth: 72,
              margin: EdgeInsets.zero,
              itemPadding: const EdgeInsets.all(0),
              padding: const EdgeInsets.symmetric(vertical: 6),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              alignment: MainAxisAlignment.spaceAround,
              showText: true,
              fillBottom: true,
              textAtBottom: true,
            ),
          );
        },
      ),
      overrides: [
        LegendSizingOverride(
          key: 480,
          spacing1: 16,
          spacing2: 12,
          spacing3: 10,
          spacing4: 8,
          subSizing: (sizing) {
            return LegendSubSizingOverride(
              typographySizing: TypographySizingOverride(
                h0: 10,
                h1: 12,
                h2: 16,
                h3: 20,
                h4: 26,
                h5: 32,
              ),
              appBarSizing: AppBarSizingOverride(
                spacing: 24,
                iconSize: 24,
                appBarHeight: 64,
                logoSize: 48,
                buildComponents: (sizing) => AppBarSizingComponentsOverride(
                  tabbarSizing: TabbarSizingOverride(
                    height: 48,
                    alignment: MainAxisAlignment.start,
                  ),
                ),
              ),
              bottomBarSizing: BottomBarSizingOverride(
                iconSize: 22,
                padding: const EdgeInsets.symmetric(vertical: 6),
                height: 72,
              ),
              menuDrawerSizing: MenuDrawerSizingOverride(
                iconSize: 40,
                itemHeight: 64,
                width: 240,
              ),
            );
          },
        ),
        LegendSizingOverride(
          key: 720,
          subSizing: (sizing) {
            return LegendSubSizingOverride(
              appBarSizing: AppBarSizingOverride(
                appBarHeight: 64,
                logoSize: 48,
              ),
              typographySizing: TypographySizingOverride(
                h0: 12,
                h1: 14,
              ),
              siderSizing: SiderSizingOverride(
                width: 200,
                buildComponents: (sizing) {
                  return SiderSizingComponentsOverride(
                    sideMenuSizing: SideMenuSizingOverride(
                      iconSize: 12,
                      spacing: 4,
                    ),
                  );
                },
              ),
            );
          },
        ),
        LegendSizingOverride(
          key: 1080,
          subSizing: (sizing) {
            return LegendSubSizingOverride(
              typographySizing: TypographySizingOverride(
                h0: 13,
                h1: 15,
              ),
              siderSizing: SiderSizingOverride(
                width: 220,
              ),
              appBarSizing: AppBarSizingOverride(
                buildComponents: (sizing) {
                  return AppBarSizingComponentsOverride(
                    menuSizing: MenuSizingOverride(
                      height: 36,
                    ),
                  );
                },
              ),
            );
          },
        ),
        LegendSizingOverride(
          key: 1600,
          subSizing: (sizing) {
            return LegendSubSizingOverride(
              typographySizing: TypographySizingOverride(
                h0: 14,
                h1: 16,
              ),
              siderSizing: SiderSizingOverride(
                width: 240,
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  LegendTypography buildTypography() {
    return const LegendTypography(
      h0: TextStyle(),
      h1: TextStyle(),
      h2: TextStyle(),
      h3: TextStyle(),
      h4: TextStyle(),
      h5: TextStyle(),
    );
  }
}
