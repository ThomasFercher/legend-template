import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:legend_design_core/legend_app.dart';
import 'package:legend_utils/urlstrategy/url_strategy.dart';
import 'config/routes.dart';
import 'config/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  runApp(
    LegendApp(
      routesDelegate: const RoutesTheme(),
      themeDelegate: const AppTheme(),
      logo: Container(
        width: 0,
      ),
      title: "Legend Template",
      buildSplashscreen: (context, theme) {
        return Container(
          color: theme.colors.primary,
        );
      },
    ),
  );
}
