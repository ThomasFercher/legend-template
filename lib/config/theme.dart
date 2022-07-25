import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legend_design_core/interfaces/theme_interface.dart';
import 'package:legend_design_core/styles/colors/legend_colors.dart';
import 'package:legend_design_core/styles/colors/subcolors/menuDrawer/menu_drawer_colors.dart';
import 'package:legend_design_core/styles/colors/subcolors/micros/menu/menu_colors.dart';
import 'package:legend_design_core/styles/colors/subcolors/micros/sidemenu/sidemenu_colors.dart';
import 'package:legend_design_core/styles/colors/subcolors/sub_colors.dart';
import 'package:legend_design_core/styles/legend_theme.dart';
import 'package:legend_design_core/styles/sizing/core/core_sizing.dart';
import 'package:legend_design_core/styles/sizing/core/override.dart';
import 'package:legend_design_core/styles/sizing/sub_sizing/legend_sub_sizing.dart';
import 'package:legend_design_core/styles/sizing/sub_sizing/micros/menu/menu_sizing.dart';
import 'package:legend_design_core/styles/sizing/sub_sizing/micros/sidemenu/sidemenu_sizing.dart';
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
          foreground1: Colors.blueGrey[800]!,
          foreground2: Colors.blueGrey[500]!,
          foreground3: Colors.blueGrey[200]!,
          foreground4: Colors.blueGrey[100]!,
          foreground5: Colors.blueGrey[50]!,
          background1: Colors.white,
          background2: Colors.blueGrey[50]!,
          background3: Colors.blueGrey[100]!,
          background4: Colors.blueGrey[400]!,
          background5: Colors.blueGrey[800]!,
          error: Colors.red[300]!,
          disabled: LegendColors.gray5,
          selection: Colors.tealAccent[400]!,
          onPrimary: Colors.indigo[200]!,
          onSecondary: Colors.teal[200]!,
          onTertiary: Colors.blueGrey[200]!,
          custom: {
            "test": Colors.red,
          },
          subcolors: (colors) {
            return LegendSubColors(
              appBar: AppBarColorsOverride(
                background: colors.primary,
                foreground: Colors.indigo[50],
                buildComponents: (appBar) {
                  return AppBarColorsComponentsOverride(
                    menuColors: MenuColorsOverride(
                      foreground: appBar.foreground,
                      activeBackground: appBar.background.lighten(0.2),
                    ),
                    subMenuColors: SideMenuColorsOverride(
                      foreground: appBar.foreground,
                    ),
                  );
                },
              ),
              footer: FooterColorsOverride(
                background: colors.background5,
              ),
              sider: SiderColorsOverride(
                  background: colors.primary,
                  foreground: colors.foreground5,
                  selection: colors.selection,
                  backgroundMenu: colors.primary.darken(),
                  buildComponents: (sider) {
                    return SiderColorsComponentsOverride(
                      menuColors: SideMenuColorsOverride(
                        background: colors.primary,
                        activeForeground: sider.selection,
                        activeBackground: colors.primary.lighten(0.1),
                        foreground: sider.foreground,
                        menuBackground: sider.background,
                      ),
                    );
                  }),
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
          foreground1: LegendColors.gray8,
          foreground2: LegendColors.gray9,
          foreground3: LegendColors.gray10,
          foreground4: LegendColors.gray11,
          foreground5: LegendColors.gray12,
          background1: LegendColors.gray11,
          background2: LegendColors.gray8,
          background3: LegendColors.gray5,
          background4: LegendColors.gray4,
          background5: LegendColors.gray2,
          error: Colors.red,
          disabled: LegendColors.gray7,
          selection: Colors.tealAccent[400]!,
          onPrimary: Colors.indigo[200]!,
          onSecondary: Colors.teal[200]!,
          onTertiary: Colors.teal[200]!,
          custom: {
            "test": Colors.red,
          },
          subcolors: (colors) {
            return LegendSubColors(
              appBar: AppBarColorsOverride(
                background: Colors.red,
                foreground: Colors.indigo[50],
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
          'settingsWidth': 200,
        },
        key: 720,
        elevation1: 0,
        elevation2: 1,
        elevation3: 2,
        elevation4: 4,
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
        typographySizing: TypographySizing(baseSize: 14, maxSize: 42),
        subSizing: (LegendCoreSizing sizing) {
          return LegendSubSizing(
            footerSizing: FooterSizingStyle(
              height: 80,
              maxWidth: 1000,
              padding: const EdgeInsets.all(24),
            ),
            siderSizing: SiderSizingStyle(
              width: 200,
              iconSize: 18,
              itemHeight: 48,
              spacing: 8,
              itemPadding: const EdgeInsets.symmetric(horizontal: 32),
              subMenuHeaderHeight: 48,
              subItemPadding: const EdgeInsets.symmetric(horizontal: 16),
              horizontalPadding: 8,
              buildComponents: (sider) {
                return SiderSizingComponents(
                  sideMenuSizing: SideMenuSizingStyle(
                    spacing: sider.iconSize,
                    borderRadius: sizing.radius1.asRadius(),
                    iconSize: sizing.iconSize2,
                    itemHeight: sider.itemHeight,
                    padding: sider.itemPadding,
                  ),
                );
              },
            ),
            appBarSizing: AppBarSizingStyle(
              appBarHeight: 64,
              contentPadding: const EdgeInsets.only(
                right: 12,
                left: 16,
              ),
              iconSize: 22,
              spacing: 4,
              logoSize: 48,
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
              itemPadding: EdgeInsets.all(0),
              padding: EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
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
        ),
        LegendSizingOverride(
          key: 720,
          subSizing: (sizing) {
            return LegendSubSizingOverride(
              siderSizing: SiderSizingOverride(
                width: 220,
                buildComponents: (sizing) {
                  return SiderSizingComponentsOverride(
                    sideMenuSizing: SideMenuSizingOverride(
                      iconSize: 12,
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
    return LegendTypography(
      //   base: GoogleFonts.nunito(),
      h6: GoogleFonts.lobsterTwo(),
    );
  }
}
