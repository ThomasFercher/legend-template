import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:legend_design_core/icons/legend_animated_icon.dart';
import 'package:legend_design_core/layout/fixed/fixed_footer.dart';
import 'package:legend_design_core/styles/theming/theme_provider.dart';
import 'package:legend_design_core/typography/legend_text.dart';
import 'package:legend_design_core/typography/typography.dart';
import 'package:legend_design_core/utils/legend_utils.dart';
import 'package:legend_design_widgets/input/text/paragraph/legendParagraph.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';

class LayoutInfo {
  static FixedFooterSizing sizing = FixedFooterSizing(
    height: 150,
    maxWidth: 1200,
    padding: EdgeInsets.all(32),
  );

  static FixedFooter footer = FixedFooter(
    sizing: sizing,
    builder: (context, sizing, colors) {
      ThemeProvider theme = context.watch<ThemeProvider>();
      FixedFooterColors colors = theme.colors.fixedFooterColors;
      return Container(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "Gasthof Kurath",
                    textAlign: TextAlign.center,
                    style: theme.typography.h0.copyWith(color: Colors.white),
                  ),
                  Text(
                    "Dorfgasse 6 A - 9064 St.Felippen",
                    textAlign: TextAlign.center,
                    style: theme.typography.h0.copyWith(color: Colors.white),
                  ),
                  Text(
                    "+4342242228",
                    textAlign: TextAlign.center,
                    style: theme.typography.h0.copyWith(color: Colors.white),
                  ),
                  Text(
                    "info@gasthof-kurath.at",
                    textAlign: TextAlign.center,
                    style: theme.typography.h0.copyWith(color: Colors.white),
                  ),
                ],
              ),

              /*LegendParagraph(
                values: {
                  ParagraphType(
                      textStyle: theme.typography.h1.copyWith(
                        color: Colors.white,
                      ),
                      bottom: 4): "Gasthof Kurath",
                  ParagraphType(
                      textStyle: theme.typography.h0.copyWith(
                        color: Colors.white,
                      ),
                      bottom: 4): "Dorfgasse 6 A - 9064 St.Felippen",
                  ParagraphType(
                      textStyle: theme.typography.h0.copyWith(
                        color: Colors.white,
                      ),
                      bottom: 4): "+4342242228",
                  ParagraphType(
                      textStyle: theme.typography.h0.copyWith(
                        color: Colors.white,
                      ),
                      bottom: 4): "info@gasthof-kurath.at",
                },
              ),*/
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  LegendText(text: "©Legend Design",textStyle: theme.typography.h0.copyWith(color: Colors.white),)
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
