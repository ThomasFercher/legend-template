import 'package:flutter/material.dart';
import 'package:legend_design_core/interfaces/legend_config.dart';
import 'package:legend_design_core/legend_app.dart';
import 'package:legend_design_core/state/legend_state.dart';
import 'package:legend_utils/urlstrategy/url_strategy.dart';
import 'config/colors.dart';
import 'config/layout.dart';
import 'config/routes.dart';
import 'config/sizing.dart';
import 'config/typography.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  runApp(
    LegendApp(
      config: LegendConfig(
        colorsDelegate: AppColors(),
        sizingDelegate: AppSizing(),
        typographyDelegate: AppTypography(),
        layoutDelegate: AppLayout(),
        routesDelegate: AppRoutes(),
        initalColors: PaletteType.dark(),
      ),
      logoBuilder: (_) => Image.asset("assets/legend_logo.png"),
      title: "Legend Template",
      buildSplashscreen: (context, theme) {
        return Container(
          color: theme.colors.primary,
        );
      },
    ),
  );
}
