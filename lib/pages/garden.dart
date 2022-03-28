import 'package:flutter/material.dart';
import 'package:legend_design_core/layout/scaffold/legend_scaffold.dart';
import 'package:legend_design_core/styles/layouts/layout_type.dart';
import 'package:legend_design_core/styles/theming/theme_provider.dart';
import 'package:legend_design_core/typography/legend_text.dart';
import 'package:provider/src/provider.dart';

class Garden extends StatelessWidget {
const Garden();

  @override
  Widget build(BuildContext context) {
        ThemeProvider theme = context.watch<ThemeProvider>();

    return LegendScaffold(
      contentBuilder: (context, size) {
        return LegendText(text: "Garden");

      },
      layoutType: LayoutType.FixedHeader,
      pageName: "Garden",
    );
  }
}