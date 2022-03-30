import 'package:flutter/material.dart';
import 'package:legend_design_core/layout/fixed/appBar.dart/fixed_appbar.dart';
import 'package:legend_design_core/layout/fixed/appBar.dart/fixed_appbar_colors.dart';
import 'package:legend_design_core/layout/fixed/appBar.dart/fixed_appbar_sizing.dart';
import 'package:legend_design_core/layout/fixed/bottomBar.dart/fixed_bottom_bar.dart';
import 'package:legend_design_core/layout/fixed/fixed_footer.dart';
import 'package:legend_design_core/layout/fixed/sider/siderTheme.dart';
import 'package:legend_design_core/objects/menu_option.dart';
import 'package:legend_design_core/router/routes/route_info.dart';
import 'package:legend_design_core/styles/theming/colors/legend_color_palette.dart';
import 'package:legend_design_core/styles/theming/colors/legend_color_theme.dart';
import 'package:legend_design_core/styles/theming/colors/legend_colors.dart';
import 'package:legend_design_core/styles/theming/sizing/legend_sizing.dart';
import 'package:legend_design_core/styles/theming/sizing/legend_sizing_theme.dart';
import 'package:legend_design_core/typography/typography.dart';
import 'package:legend_design_template/pages/events.dart';
import 'package:legend_design_template/pages/garden.dart';
import 'package:legend_design_template/pages/home_screen/home_big.dart';
import 'package:legend_design_template/pages/home_screen/homedynamic.dart';
import 'package:legend_design_template/pages/menu.dart';
import 'package:legend_design_template/pages/modals/settings.dart';
import 'package:legend_design_template/pages/rooms.dart';

class AppConfig {
  static BottomBarSizing bottomBarSizing = BottomBarSizing(
    showText: true,
    textAtBottom: true,
    iconSize: 30,
    height: 72,
    margin: const EdgeInsets.all(0),
    decoration: const BoxDecoration(
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
    splits: [
      420,
      720,
      1080,
      1920,
    ],
    sizings: [
      LegendSizing(
        typographySizing: LegendTypographySizing(baseSize: 14, maxSize: 22),
        borderRadius: [
          const BorderRadius.all(
            Radius.circular(12),
          ),
          const BorderRadius.all(
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
        bottomBarSizing: bottomBarSizing,
        appBarSizing: FixedAppBarSizing(
          appBarHeight: 72,
          contentPadding: const EdgeInsets.only(
            right: 8,
            left: 8,
          ),
          borderRadius: const Radius.circular(20),
          iconSize: 28,
          spacing: 8,
          titleSize: 42,
        ),
      ),
      LegendSizing(
        typographySizing: LegendTypographySizing(baseSize: 12, maxSize: 30),
        borderRadius: [
          const BorderRadius.all(
            Radius.circular(16.0),
          ),
          const BorderRadius.all(
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
          appBarHeight: 80,
          contentPadding: const EdgeInsets.only(
            right: 16,
            left: 16,
          ),
          iconSize: 22,
          spacing: 12,
          titleSize: 48,
        ),
      ),
      LegendSizing(
        typographySizing: LegendTypographySizing(baseSize: 12, maxSize: 32),
        borderRadius: [
          const BorderRadius.all(
            Radius.circular(12),
          ),
          const BorderRadius.all(
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
          contentPadding: const EdgeInsets.only(
            right: 16,
            left: 16,
          ),
          borderRadius: const Radius.circular(20),
          iconSize: 24,
          spacing: 16,
          titleSize: 56,
        ),
      ),
      LegendSizing(
        typographySizing: LegendTypographySizing(baseSize: 18, maxSize: 42),
        borderRadius: [
          const BorderRadius.all(
            Radius.circular(12),
          ),
          const BorderRadius.all(
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
          contentPadding: const EdgeInsets.only(
            right: 16,
            left: 16,
          ),
          borderRadius: const Radius.circular(20),
          iconSize: 28,
          spacing: 16,
          titleSize: 64,
        ),
      ),
    ],
  );

  static LegendColorPalette lightColorTheme = LegendColorPalette(
    disabledColor: Colors.black,
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
    cardBackgroundColor: Colors.red,
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
    selectionColor: Colors.white,
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
  static LegendColorPalette darkColorTheme = LegendColorPalette(
    disabledColor: Colors.black,
    textContrast: const Color(0xFFb3dedb),
    siderColorTheme: SiderColorTheme(
      background: Colors.teal,
      backgroundMenu: Colors.teal[600]!,
      foreground: Colors.teal[50]!,
    ),
    typographyColors: LegendTypographyColors(
      baseColor: Colors.grey[900],
    ),
    bottomBarColors: BottomBarColors(
      activeColor: Colors.white,
      disabledColor: Colors.grey[900],
      backgroundColor: Colors.redAccent,
    ),
    fixedFooterColors: FixedFooterColors(
      backgroundColor: LegendColors.gray10,
      foreground: LegendColors.gray6,
    ),
    cardBackgroundColor: LegendColors.gray9,
    primaryColor: Colors.teal,
    secondaryColor: Color(0xFFb3dedb),
    scaffoldBackgroundColor: LegendColors.gray3,
    foreground: [
      LegendColors.gray1,
      LegendColors.gray5,
      LegendColors.gray7,
      LegendColors.gray9,
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
      backgroundColor: Colors.red,
      iconColor: Colors.grey[900]!,
      selectedColor: Colors.white,
      foreground: Colors.grey[900]!,
    ),
  );

  static List<MenuOption> menuOptions = [
    MenuOption(
      title: "Home",
      page: "/",
      icon: Icons.home,
    ),
    MenuOption(
      title: "Menü",
      page: "/menu",
      icon: Icons.restaurant_menu,
    ),
    MenuOption(
      title: "Anlässe",
      page: "/events",
      icon: Icons.event_available_outlined,
    ),
    MenuOption(
      title: "Garten",
      page: "/garden",
      icon: Icons.wb_sunny_sharp,
    ),
    MenuOption(
      title: "Zimmer",
      page: "/rooms",
      icon: Icons.bed,
    ),
  ];

  static List<RouteInfo> routes = [
    ModalRouteInfo(
      body: const SettingsPage(),
      name: "/settings",
    ),
    PageRouteInfo(
      name: "/",
      page: const HomeDynamic(),
    ),
    PageRouteInfo(
      name: "/menu",
      page: const Menu(),
    ),
    PageRouteInfo(
      name: "/events",
      page: const Events(),
    ),
    PageRouteInfo(
      name: "/garden",
      page: const Garden(),
    ),
    PageRouteInfo(
      name: "/rooms",
      page: const Rooms(),
    ),
  ];
}
