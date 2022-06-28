import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legend_design_core/interfaces/subThemes.dart';
import 'package:legend_design_core/interfaces/theme_interface.dart';
import 'package:legend_design_core/layout/footer/fixed_footer.dart';
import 'package:legend_design_core/layout/navigation/siderMenu/siderMenuStyle.dart';
import 'package:legend_design_core/layout/scaffold/config/scaffold_config.dart';
import 'package:legend_design_core/styles/colors/legend_colors.dart';
import 'package:legend_design_core/styles/colors/subcolors/menu_drawer_colors.dart';
import 'package:legend_design_core/styles/colors/subcolors/sub_colors.dart';
import 'package:legend_design_core/styles/legend_theme.dart';
import 'package:legend_design_core/styles/sizing/core/core_sizing.dart';
import 'package:legend_design_core/styles/sizing/core/override.dart';
import 'package:legend_design_core/styles/sizing/sub_sizing/footer_sizing.dart';
import 'package:legend_design_core/styles/sizing/sub_sizing/legend_sub_sizing.dart';
import 'package:legend_design_core/styles/sizing/sub_sizing/menu_drawer_sizing.dart';
import 'package:legend_design_core/styles/sizing/sub_sizing/sider_sizing.dart';
import 'package:legend_design_core/styles/typography/typography.dart';
import 'package:legend_design_core/widgets/icons/legend_animated_icon.dart';
import 'package:legend_design_template/config/widgets/footer.dart';
import 'package:legend_router/router/legend_router.dart';
import 'package:legend_utils/legend_utils.dart';

class AppTheme extends ThemeInterface {
  const AppTheme() : super();

  @override
  LegendColorTheme buildColorTheme() {
    return LegendColorTheme(
      themes: [
        LegendPalette(
          primary: Colors.indigo,
          secondary: Colors.teal,
          tertiary: Colors.teal,
          foreground1: LegendColors.gray8,
          foreground2: LegendColors.gray9,
          foreground3: LegendColors.gray10,
          foreground4: LegendColors.gray11,
          foreground5: LegendColors.gray12,
          background1: LegendColors.gray2,
          background2: LegendColors.gray4,
          background3: LegendColors.gray5,
          background4: LegendColors.gray8,
          background5: LegendColors.gray9,
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
                background: colors.primary,
                foreground: Colors.indigo[50],
              ),
              sider: SiderColorOverride(
                background: colors.primary,
                foreground: Colors.white,
                selection: colors.selection,
                backgroundMenu: colors.primary.darken(),
              ),
              menuDrawer: MenuDrawerColorOverride(
                background: Colors.white,
                backgroundMenu: colors.onPrimary,
                foreground: colors.primary,
                background_selection: colors.primary,
                background_menu_selection: colors.primary,
              ),
            );
          },
        ),
        LegendPalette(
          primary: Colors.indigo,
          secondary: Colors.teal,
          tertiary: Colors.teal,
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
        iconSize1: 14,
        iconSize2: 20,
        iconSize3: 26,
        iconSize4: 32,
        radius1: 4,
        radius2: 8,
        radius3: 12,
        radius4: 16,
        spacing1: 8,
        spacing2: 16,
        spacing3: 24,
        spacing4: 32,
        typographySizing: TypographySizing(baseSize: 12, maxSize: 36),
        subSizing: (LegendCoreSizing sizing) {
          return LegendSubSizing(
            footerSizing: const FixedFooterSizing(
              height: 80,
              maxWidth: 1000,
              padding: EdgeInsets.all(24),
            ),
            siderSizing: const SiderSizing(
              width: 200,
              iconSize: 18,
              itemHeight: 48,
              spacing: 8,
              itemPadding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 16,
              ),
              subMenuHeaderHeight: 48,
              subItemPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              horizontalPadding: 8,
            ),
            appBarSizing: AppBarSizing(
              appBarHeight: 64,
              contentPadding: const EdgeInsets.only(
                right: 12,
                left: 16,
              ),
              iconSize: 22,
              spacing: 4,
              logoSize: 48,
            ),
            menuDrawerSizing: const MenuDrawerSizing(
              width: 320,
              iconSize: 24,
              itemHeight: 48,
              spacing: 8,
              itemPadding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 2,
              ),
              subMenuHeaderHeight: 48,
              subItemPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 2,
              ),
              subMenuIconSize: 12,
            ),
            bottomBarSizing: const BottomBarSizing(
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
          spacing1: 8,
          spacing2: 12,
        ),
        LegendSizingOverride(
          key: 720,
          spacing1: 12,
          spacing2: 16,
          subSizing: (sizing) {
            return const LegendSubSizingOverride(
              siderSizing: SiderSizingOverride(
                width: 240,
              ),
              appBarSizing: AbbBarSizingOverride(appBarHeight: 40),
            );
          },
        ),
        LegendSizingOverride(
          key: 1080,
          spacing1: 16,
          spacing2: 22,
          subSizing: (sizing) {
            return const LegendSubSizingOverride(
              siderSizing: SiderSizingOverride(
                width: 240,
              ),
            );
          },
        ),
        LegendSizingOverride(
          key: 1600,
          spacing1: 18,
          spacing2: 26,
          subSizing: (sizing) {
            return const LegendSubSizingOverride(
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

  @override
  ScaffoldConfig Function(LegendTheme theme)? buildConfig() =>
      (LegendTheme theme) => ScaffoldConfig(
            builders: ScaffoldBuilders(
                appBarActions: (c) {
                  return LegendAnimatedIcon(
                    icon: Icons.color_lens,
                    theme: LegendAnimtedIconTheme(
                      enabled: theme.colors.selection,
                      disabled: theme.colors.appBar.foreground,
                    ),
                    iconSize: theme.appBarSizing.iconSize,
                    disableShadow: true,
                    onPressed: () {
                      LegendRouter.of(c).pushGlobalModal(
                        settings: const RouteSettings(name: "/settings"),
                        useKey: true,
                      );
                    },
                  );
                },
                customFooter: FixedFooter(
                  builder: ((context, sizing, colors) => const Footer()),
                ),
                siderBuilder: (c) {
                  return Container(
                    height: 20,
                    width: 20,
                    color: theme.colors.onPrimary,
                  );
                }),
          );
}
