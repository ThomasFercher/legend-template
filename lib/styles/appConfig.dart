import 'package:flutter/material.dart';
import 'package:legend_design_core/layout/drawers/legend_drawer_info.dart';
import 'package:legend_design_core/layout/fixed/appBar.dart/fixed_appbar.dart';
import 'package:legend_design_core/layout/fixed/bottomBar.dart/fixed_bottom_bar.dart';
import 'package:legend_design_core/layout/fixed/fixed_footer.dart';
import 'package:legend_design_core/layout/fixed/sider/siderTheme.dart';
import 'package:legend_design_core/objects/menu_option.dart';
import 'package:legend_design_core/router/routes/route_info.dart';
import 'package:legend_design_core/styles/theming/colors/legend_color_theme.dart';
import 'package:legend_design_core/styles/theming/colors/legend_colors.dart';
import 'package:legend_design_core/styles/theming/sizing/legend_sizing.dart';
import 'package:legend_design_core/styles/theming/sizing/legend_sizing_theme.dart';
import 'package:legend_design_core/typography/typography.dart';
import 'package:legend_design_template/pages/home.dart';
import 'package:legend_design_template/pages/modals/settings.dart';

class AppConfig {
  static BottomBarSizing bottomBarSizing = BottomBarSizing(
    showText: true,
    textAtBottom: true,
    iconSize: 30,
    height: 72,
    margin: EdgeInsets.all(0),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 9.0,
          spreadRadius: 3.0,
        ),
      ],
    ),
  );

  static LegendSizingTheme sizingTheme = LegendSizingTheme(
    desktop: LegendSizing(
      typographySizing: LegendTypographySizing(baseSize: 14, maxSize: 32),
      borderRadius: [
        BorderRadius.all(
          Radius.circular(12),
        ),
        BorderRadius.all(
          Radius.circular(6),
        ),
      ],
      borderInset: [
        12,
        6,
      ],
      padding: [
        8,
        18,
        24,
      ],
      appBarSizing: FixedAppBarSizing(
        appBarHeight: 80,
        contentPadding: EdgeInsets.only(right: 6),
        borderRadius: Radius.circular(20),
        iconSize: 28,
        spacing: 20,
        titleSize: 48,
      ),
    ),
    mobile: LegendSizing(
      typographySizing: LegendTypographySizing(baseSize: 14, maxSize: 30),
      borderRadius: [
        BorderRadius.all(
          Radius.circular(16.0),
        ),
        BorderRadius.all(
          Radius.circular(12.0),
        ),
      ],
      borderInset: [
        16,
        12,
      ],
      padding: [
        12,
        16,
        24,
      ],
      appBarSizing: FixedAppBarSizing(
        appBarHeight: 72,
        contentPadding: EdgeInsets.all(0),
        iconSize: 16,
        spacing: 20,
        titleSize: 42,
      ),
      bottomBarSizing: bottomBarSizing,
    ),
    tablet: LegendSizing(
      typographySizing: LegendTypographySizing(baseSize: 12, maxSize: 32),
      borderRadius: [
        BorderRadius.all(
          Radius.circular(12),
        ),
        BorderRadius.all(
          Radius.circular(6),
        ),
      ],
      borderInset: [
        12,
        12,
      ],
      padding: [
        12,
        16,
        24,
      ],
      appBarSizing: FixedAppBarSizing(
        appBarHeight: 80,
        contentPadding: EdgeInsets.all(0),
        borderRadius: Radius.circular(20),
        iconSize: 24,
        spacing: 20,
      ),
    ),
    web: LegendSizing(
      typographySizing: LegendTypographySizing(baseSize: 14, maxSize: 32),
      borderRadius: [
        BorderRadius.all(
          Radius.circular(12),
        ),
        BorderRadius.all(
          Radius.circular(6),
        ),
      ],
      borderInset: [
        12,
        12,
      ],
      padding: [
        12,
        16,
        24,
      ],
      appBarSizing: FixedAppBarSizing(
        appBarHeight: 80,
        contentPadding: EdgeInsets.all(0),
        borderRadius: Radius.circular(20),
        iconSize: 24,
        spacing: 20,
      ),
    ),
  );

  static LegendColorTheme lightColorTheme = LegendColorTheme(
    textContrast: Colors.cyan,
    typographyColors: LegendTypographyColors(
      baseColor: Colors.black,
    ),
    bottomBarColors: BottomBarColors(
      activeColor: Colors.cyanAccent,
      disabledColor: LegendColors.gray4,
      backgroundColor: LegendColors.white100,
    ),
    fixedFooterColors: FixedFooterColors(
      backgroundColor: LegendColors.gray10,
      foreground: LegendColors.gray4,
    ),
    cardBackgroundColor: Colors.white,
    primaryColor: Colors.cyan,
    secondaryColor: Colors.tealAccent[100]!,
    scaffoldBackgroundColor: LegendColors.gray2,
    foreground: [
      LegendColors.black12,
      LegendColors.black20,
      LegendColors.black40,
      LegendColors.gray8,
      LegendColors.gray10,
    ],
    background: [
      LegendColors.black04,
      LegendColors.black12,
      LegendColors.black20,
      LegendColors.gray6,
      LegendColors.gray8,
      LegendColors.gray10,
    ],
    elevations: [
      0,
      0.5,
      1,
      2,
      4,
      8,
    ],
    selectionColor: Colors.cyanAccent,
    textColorDark: Colors.cyan[900]!,
    textColorLight: Colors.tealAccent[100]!,
    appBarColors: FixedAppBarColors(
      backgroundColor: Colors.cyan,
      iconColor: Colors.tealAccent[100]!,
      selectedColor: Colors.cyanAccent,
      foreground: Colors.teal[50]!,
    ),
    siderColorTheme: SiderColorTheme(
      background: Colors.cyan,
      backgroundMenu: Colors.cyan[400]!,
      foreground: Colors.teal[50]!,
    ),
  );
  static LegendColorTheme darkColorTheme = LegendColorTheme(
    textContrast: Color(0xFFb3dedb),
    siderColorTheme: SiderColorTheme(
      background: Colors.teal,
      backgroundMenu: Colors.teal[600]!,
      foreground: Colors.teal[50]!,
    ),
    typographyColors: LegendTypographyColors(
      baseColor: Colors.white,
    ),
    bottomBarColors: BottomBarColors(
      activeColor: Colors.teal,
      disabledColor: Colors.black26,
      backgroundColor: LegendColors.gray10,
    ),
    fixedFooterColors: FixedFooterColors(
      backgroundColor: LegendColors.gray8,
      foreground: LegendColors.gray4,
    ),
    cardBackgroundColor: LegendColors.gray9,
    primaryColor: Colors.teal,
    secondaryColor: Color(0xFFb3dedb),
    scaffoldBackgroundColor: LegendColors.gray11,
    foreground: [
      LegendColors.gray10,
      LegendColors.gray8,
      LegendColors.gray6,
      LegendColors.gray4,
    ],
    background: [
      LegendColors.gray10,
      LegendColors.gray9,
      LegendColors.gray8,
      LegendColors.gray7,
      LegendColors.gray6,
      LegendColors.gray5,
    ],
    selectionColor: Colors.tealAccent,
    textColorDark: LegendColors.gray6,
    textColorLight: LegendColors.gray4,
    appBarColors: FixedAppBarColors(
      backgroundColor: Colors.teal,
      iconColor: Colors.tealAccent,
      selectedColor: Colors.tealAccent,
      foreground: Colors.teal[50]!,
    ),
  );

  static List<MenuOption> menuOptions = [
    MenuOption(
      title: "Home",
      page: "/",
      icon: Icons.home,
    ),
  ];

  static List<LegendDrawerRoute> drawerRoutes = [
    LegendDrawerRoute(
      title: "Settings",
      name: "/settings",
      contentBuilder: (context) {
        return SettingsPage();
      },
      actions: [],
      width: 400,
      mobileWidth: 320,
    ),
  ];

  static List<RouteInfo> routes = [
    RouteInfo(
      name: "/",
      page: Home(),
    ),
  ];
}
