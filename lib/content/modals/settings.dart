import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:legend_design_core/legend_design_core.dart';
import 'package:legend_design_core/styles/legend_theme.dart';
import 'package:legend_design_core/styles/typography/legend_text.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LegendTheme theme = context.watch<LegendTheme>();
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LegendText(
            text: "Settings",
            textStyle: theme.typography.h4,
          ),
        ],
      ),
      color: theme.colors.background2,
      width: 220,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(
        theme.sizing.spacing2,
      ),
    );
  }
}
