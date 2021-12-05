import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:legend_design_core/icons/legend_animated_icon.dart';
import 'package:legend_design_core/layout/fixed/fixed_footer.dart';
import 'package:legend_design_core/styles/theming/theme_provider.dart';
import 'package:legend_design_core/typography/legend_text.dart';
import 'package:legend_design_core/typography/typography.dart';
import 'package:legend_design_core/utils/legend_utils.dart';
import 'package:provider/provider.dart';

class LayoutInfo {
  static FixedFooterSizing sizing = FixedFooterSizing(
    height: 140,
    maxWidth: 1200,
    padding: EdgeInsets.all(32),
  );

  static FixedFooter footer = FixedFooter(
    sizing: sizing,
    builder: (context, sizing, colors) {
      ThemeProvider theme = context.watch<ThemeProvider>();
      FixedFooterColors colors = theme.colors.fixedFooterColors;
      return Container();
    },
  );
}
