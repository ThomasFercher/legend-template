import 'package:flutter/widgets.dart';
import 'package:legend_design_core/legend_design_core.dart';
import 'package:legend_design_core/styles/legend_theme.dart';
import 'package:legend_design_core/styles/typography/legend_text.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LegendTheme theme = context.watch<LegendTheme>();
    return Center(
      child: LegendText(
        text: "Legend Design",
        textStyle: theme.typography.h4.copyWith(
          color: theme.colors.background1,
        ),
      ),
    );
  }
}
