import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:legend_design_core/state/legend_state.dart';
import 'package:legend_design_core/styles/typography/widgets/legend_text.dart';

class Footer extends LegendWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, theme) {
    return Container(
      height: 120,
      color: theme.footerColors.background,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LegendText(
            "Legend Design",
            style: theme.typography.h4.copyWith(
              color: theme.footerColors.foreground,
            ),
          ),
        ],
      ),
    );
  }
}
